import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';
import 'package:test_handcom_app/app/core/customs/custom_buttom.dart';
import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/movements_store.dart';

class FiltersWidget extends StatelessWidget {
  final ObservableList<Product> productList;

  FiltersWidget({
    super.key,
    required this.productList,
  });
  final store = Modular.get<MovementsStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    title: 'Filtros',
                    enabledColor: false,
                    enabledIcon: true,
                    icon: Icons.filter_alt_outlined,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10),
                  CustomButtom(
                    title: 'Ordenamento',
                    enabledColor: false,
                    enabledIcon: true,
                    icon: Icons.menu,
                    onPressed: () {},
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: CustomButtom(
                      title: 'Área de Recebimento',
                      enabledColor: true,
                      enabledIcon: false,
                      onPressed: () {
                        if (store.onFilter) {
                        } else {
                          store.onFilter = true;
                          return store.updateListFilter(productList, false);
                        }
                      },
                      backgroundColor: store.isReceiptSelected
                          ? AppColors.blue
                          : Colors.grey[400],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    child: CustomButtom(
                      title: 'Área de Quarentena',
                      enabledColor: true,
                      enabledIcon: false,
                      onPressed: () {
                        if (store.onFilter) {
                        } else {
                          store.onFilter = true;
                          return store.updateListFilter(productList, true);
                        }
                      },
                      backgroundColor: store.isQuarantineSelected
                          ? AppColors.orange
                          : Colors.grey[400],
                    ),
                  ),
                  const SizedBox(width: 10),
                  store.onFilter
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            store.resetFilter();
                          },
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
