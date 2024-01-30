// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:test_handcom_app/app/core/utils/utils_app.dart';
import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/domain/usecases/get_products.dart';

part 'movements_store.g.dart';

class MovementsStore = _MovementsStoreBase with _$MovementsStore;

abstract class _MovementsStoreBase with Store {
  final GetProducts _getProducts;

  _MovementsStoreBase({
    required GetProducts getProducts,
  }) : _getProducts = getProducts;

  @observable
  bool onFilter = false;

  @observable
  double quantityStock = 0;

  @observable
  double quantityStockWasMoved = 0;

  @observable
  int productItemFoundQuantity = 0;

  @observable
  int filteredItemFoundQuantity = 0;

  @observable
  double filteredTotalQuantity = 0;

  @observable
  bool isReceiptSelected = false;

  @observable
  bool isQuarantineSelected = false;

  @observable
  ObservableList<Product> productList = ObservableList();

  @observable
  ObservableList<Product> productListWasMoved = ObservableList();

  @observable
  ObservableList<Product> filteredList = ObservableList();

  @action
  double sumQuantity(List<Product> productList) {
    return productList.fold(0, (double accumulated, Product product) {
      return accumulated + product.quantity;
    });
  }

  @action
  double sumQuantityWasMoved(List<Product> productListWasMoved) {
    return productListWasMoved.fold(0, (double accumulated, Product product) {
      return accumulated + product.quantity;
    });
  }

  @action
  ObservableList<Product> formatProductListWasMoved(List<Product> productList) {
    return ObservableList.of(
        productList.where((product) => product.wasMoved == true));
  }

  @action
  void _updateProduct() {
    productList.sort((a, b) => a.title.compareTo(b.title));
    productListWasMoved.sort((a, b) => a.title.compareTo(b.title));

    quantityStock = sumQuantity(productList);
    quantityStockWasMoved = sumQuantityWasMoved(productListWasMoved);

    productItemFoundQuantity = productList.length;
  }

  @action
  void _toggleProductMovedStatus(Product item) {
    final clonedItem = item.clone();

    clonedItem.wasMoved = !clonedItem.wasMoved;

    if (clonedItem.wasMoved) {
      productListWasMoved.add(clonedItem);
      if (onFilter) {
        filteredList.removeWhere((product) => product.id == clonedItem.id);
      } else {
        productList.removeWhere((product) => product.id == clonedItem.id);
      }
    } else {
      productList.add(clonedItem);
      productListWasMoved.removeWhere((product) => product.id == clonedItem.id);
      if (onFilter) {
        updateListFilter(productList, false);
      }
    }

    _updateProduct();
  }

  @action
  void updateListFilter(List<Product> list, bool isQuarantine) {
    if (onFilter) {
      filteredList.clear();

      isReceiptSelected = !isQuarantine;
      isQuarantineSelected = isQuarantine;

      if (isQuarantine) {
        filteredList.addAll(list.where((product) => !product.status));
      } else {
        filteredList.addAll(list.where((product) => product.status));
      }

      _updateProduct();

      filteredItemFoundQuantity = filteredList.length;
      filteredTotalQuantity = sumQuantity(filteredList);
    }
  }

  @action
  void resetFilter() {
    onFilter = false;
    filteredList.clear();
    _updateProduct();
    isReceiptSelected = false;
    isQuarantineSelected = false;
    filteredItemFoundQuantity = productItemFoundQuantity;
    filteredTotalQuantity = quantityStock;
  }

  @action
  Future<void> confirmProductMoved(
      {required Product item, required BuildContext context}) async {
    await showAlertDialog(
      context: context,
      title: "Movimentação do item",
      content: item.wasMoved
          ? "Deseja remover o item da Área de Armazenamento? Clique em confirmar."
          : "Para confirmar o armazenamento do item na Área de Armazenamento, clique em confirmar.",
      onPressed: () {
        _toggleProductMovedStatus(item);
        Modular.to.pop();
      },
    );
  }

  @action
  Future<void> loadData() async {
    try {
      final result = await _getProducts.execute();
      productList.clear();
      productList.addAll(result);
      quantityStockWasMoved = sumQuantityWasMoved(productListWasMoved);
      _updateProduct();
    } catch (e) {
      throw Exception(e);
    }
  }
}
