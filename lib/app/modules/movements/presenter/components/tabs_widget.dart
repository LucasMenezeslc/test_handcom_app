import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/components/filters_widget.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/components/item_card_widget.dart';

class TabsWidget extends StatelessWidget {
  final int itemFoundQuantity;
  final double totalQuantity;
  final ObservableList<Product> productsList;

  const TabsWidget({
    super.key,
    required this.itemFoundQuantity,
    required this.totalQuantity,
    required this.productsList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FiltersWidget(productList: productsList),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Itens Encontrados: $itemFoundQuantity'),
              Text('Peso: $totalQuantity kg'),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: productsList.length,
              itemBuilder: (context, index) {
                final item = productsList[index];
                return ItemCardWidget(item: item);
              },
            ),
          )
        ],
      ),
    );
  }
}
