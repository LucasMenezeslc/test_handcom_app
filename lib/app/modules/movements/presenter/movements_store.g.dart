// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movements_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovementsStore on _MovementsStoreBase, Store {
  late final _$onFilterAtom =
      Atom(name: '_MovementsStoreBase.onFilter', context: context);

  @override
  bool get onFilter {
    _$onFilterAtom.reportRead();
    return super.onFilter;
  }

  @override
  set onFilter(bool value) {
    _$onFilterAtom.reportWrite(value, super.onFilter, () {
      super.onFilter = value;
    });
  }

  late final _$quantityStockAtom =
      Atom(name: '_MovementsStoreBase.quantityStock', context: context);

  @override
  double get quantityStock {
    _$quantityStockAtom.reportRead();
    return super.quantityStock;
  }

  @override
  set quantityStock(double value) {
    _$quantityStockAtom.reportWrite(value, super.quantityStock, () {
      super.quantityStock = value;
    });
  }

  late final _$quantityStockWasMovedAtom =
      Atom(name: '_MovementsStoreBase.quantityStockWasMoved', context: context);

  @override
  double get quantityStockWasMoved {
    _$quantityStockWasMovedAtom.reportRead();
    return super.quantityStockWasMoved;
  }

  @override
  set quantityStockWasMoved(double value) {
    _$quantityStockWasMovedAtom.reportWrite(value, super.quantityStockWasMoved,
        () {
      super.quantityStockWasMoved = value;
    });
  }

  late final _$productItemFoundQuantityAtom = Atom(
      name: '_MovementsStoreBase.productItemFoundQuantity', context: context);

  @override
  int get productItemFoundQuantity {
    _$productItemFoundQuantityAtom.reportRead();
    return super.productItemFoundQuantity;
  }

  @override
  set productItemFoundQuantity(int value) {
    _$productItemFoundQuantityAtom
        .reportWrite(value, super.productItemFoundQuantity, () {
      super.productItemFoundQuantity = value;
    });
  }

  late final _$filteredItemFoundQuantityAtom = Atom(
      name: '_MovementsStoreBase.filteredItemFoundQuantity', context: context);

  @override
  int get filteredItemFoundQuantity {
    _$filteredItemFoundQuantityAtom.reportRead();
    return super.filteredItemFoundQuantity;
  }

  @override
  set filteredItemFoundQuantity(int value) {
    _$filteredItemFoundQuantityAtom
        .reportWrite(value, super.filteredItemFoundQuantity, () {
      super.filteredItemFoundQuantity = value;
    });
  }

  late final _$filteredTotalQuantityAtom =
      Atom(name: '_MovementsStoreBase.filteredTotalQuantity', context: context);

  @override
  double get filteredTotalQuantity {
    _$filteredTotalQuantityAtom.reportRead();
    return super.filteredTotalQuantity;
  }

  @override
  set filteredTotalQuantity(double value) {
    _$filteredTotalQuantityAtom.reportWrite(value, super.filteredTotalQuantity,
        () {
      super.filteredTotalQuantity = value;
    });
  }

  late final _$isReceiptSelectedAtom =
      Atom(name: '_MovementsStoreBase.isReceiptSelected', context: context);

  @override
  bool get isReceiptSelected {
    _$isReceiptSelectedAtom.reportRead();
    return super.isReceiptSelected;
  }

  @override
  set isReceiptSelected(bool value) {
    _$isReceiptSelectedAtom.reportWrite(value, super.isReceiptSelected, () {
      super.isReceiptSelected = value;
    });
  }

  late final _$isQuarantineSelectedAtom =
      Atom(name: '_MovementsStoreBase.isQuarantineSelected', context: context);

  @override
  bool get isQuarantineSelected {
    _$isQuarantineSelectedAtom.reportRead();
    return super.isQuarantineSelected;
  }

  @override
  set isQuarantineSelected(bool value) {
    _$isQuarantineSelectedAtom.reportWrite(value, super.isQuarantineSelected,
        () {
      super.isQuarantineSelected = value;
    });
  }

  late final _$productListAtom =
      Atom(name: '_MovementsStoreBase.productList', context: context);

  @override
  ObservableList<Product> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<Product> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  late final _$productListWasMovedAtom =
      Atom(name: '_MovementsStoreBase.productListWasMoved', context: context);

  @override
  ObservableList<Product> get productListWasMoved {
    _$productListWasMovedAtom.reportRead();
    return super.productListWasMoved;
  }

  @override
  set productListWasMoved(ObservableList<Product> value) {
    _$productListWasMovedAtom.reportWrite(value, super.productListWasMoved, () {
      super.productListWasMoved = value;
    });
  }

  late final _$filteredListAtom =
      Atom(name: '_MovementsStoreBase.filteredList', context: context);

  @override
  ObservableList<Product> get filteredList {
    _$filteredListAtom.reportRead();
    return super.filteredList;
  }

  @override
  set filteredList(ObservableList<Product> value) {
    _$filteredListAtom.reportWrite(value, super.filteredList, () {
      super.filteredList = value;
    });
  }

  late final _$confirmProductMovedAsyncAction =
      AsyncAction('_MovementsStoreBase.confirmProductMoved', context: context);

  @override
  Future<void> confirmProductMoved(
      {required Product item, required BuildContext context}) {
    return _$confirmProductMovedAsyncAction
        .run(() => super.confirmProductMoved(item: item, context: context));
  }

  late final _$loadDataAsyncAction =
      AsyncAction('_MovementsStoreBase.loadData', context: context);

  @override
  Future<void> loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$_MovementsStoreBaseActionController =
      ActionController(name: '_MovementsStoreBase', context: context);

  @override
  double sumQuantity(List<Product> productList) {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase.sumQuantity');
    try {
      return super.sumQuantity(productList);
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double sumQuantityWasMoved(List<Product> productListWasMoved) {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase.sumQuantityWasMoved');
    try {
      return super.sumQuantityWasMoved(productListWasMoved);
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  ObservableList<Product> formatProductListWasMoved(List<Product> productList) {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase.formatProductListWasMoved');
    try {
      return super.formatProductListWasMoved(productList);
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updateProduct() {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase._updateProduct');
    try {
      return super._updateProduct();
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _toggleProductMovedStatus(Product item) {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase._toggleProductMovedStatus');
    try {
      return super._toggleProductMovedStatus(item);
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateListFilter(List<Product> list, bool isQuarantine) {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase.updateListFilter');
    try {
      return super.updateListFilter(list, isQuarantine);
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetFilter() {
    final _$actionInfo = _$_MovementsStoreBaseActionController.startAction(
        name: '_MovementsStoreBase.resetFilter');
    try {
      return super.resetFilter();
    } finally {
      _$_MovementsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onFilter: ${onFilter},
quantityStock: ${quantityStock},
quantityStockWasMoved: ${quantityStockWasMoved},
productItemFoundQuantity: ${productItemFoundQuantity},
filteredItemFoundQuantity: ${filteredItemFoundQuantity},
filteredTotalQuantity: ${filteredTotalQuantity},
isReceiptSelected: ${isReceiptSelected},
isQuarantineSelected: ${isQuarantineSelected},
productList: ${productList},
productListWasMoved: ${productListWasMoved},
filteredList: ${filteredList}
    ''';
  }
}
