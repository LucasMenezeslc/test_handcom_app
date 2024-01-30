import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/components/app_bar_widget.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/components/tabs_widget.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/movements_store.dart';

class MovementsPage extends StatefulWidget {
  const MovementsPage({Key? key});

  @override
  State<MovementsPage> createState() => _MovementsPageState();
}

class _MovementsPageState extends State<MovementsPage> {
  final store = Modular.get<MovementsStore>();

  @override
  void initState() {
    super.initState();
    store.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: const AppBarWidget(),
            body: TabBarView(
              children: [
                TabsWidget(
                  productsList:
                      store.onFilter ? store.filteredList : store.productList,
                  totalQuantity: store.onFilter
                      ? store.filteredTotalQuantity
                      : store.quantityStock,
                  itemFoundQuantity: store.onFilter
                      ? store.filteredList.length
                      : store.productList.length,
                ),
                TabsWidget(
                  productsList: store.onFilter
                      ? store.filteredList
                      : store.productListWasMoved,
                  totalQuantity: store.onFilter
                      ? store.filteredTotalQuantity
                      : store.quantityStockWasMoved,
                  itemFoundQuantity: store.onFilter
                      ? store.filteredList.length
                      : store.productListWasMoved.length,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
