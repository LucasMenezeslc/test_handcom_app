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
    Key? key,
    required this.itemFoundQuantity,
    required this.totalQuantity,
    required this.productsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverToBoxAdapter(
            child: FiltersWidget(productList: productsList),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Itens Encontrados: $itemFoundQuantity'),
                Text('Peso: $totalQuantity kg'),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final item = productsList[index];
              return ItemCardWidget(item: item);
            },
            childCount: productsList.length,
          ),
        ),
      ],
    );
  }
}
