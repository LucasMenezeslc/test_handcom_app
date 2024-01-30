import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';
import 'package:test_handcom_app/app/core/themes/app_texts.dart';
import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/movements_store.dart';

class ItemCardWidget extends StatelessWidget {
  final Product item;

  ItemCardWidget({Key? key, required this.item}) : super(key: key);

  final store = Modular.get<MovementsStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Card(
        color: AppColors.white,
        elevation: 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              height: 90,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: item.status
                                  ? AppColors.green
                                  : Colors.orangeAccent[100],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5.0),
                              child: Text(
                                item.status
                                    ? "DISPONÍVEL PARA ARMAZENAMENTO"
                                    : "QUARENTENA",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: item.status
                                      ? Colors.green[800]
                                      : Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            item.status
                                ? "Quarentena -> Armazenamento"
                                : "Recebimento -> Quarentena",
                            style: const TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: AppTexts.textTitleBold,
                        ),
                        Text(item.code),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3),
            Container(
              height: 80,
              color: AppColors.white,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'OR: ${item.or}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Qtd: ${item.quantity} kg',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lote: ${item.lot}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Código de Barras: ${item.codeBar}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await store.confirmProductMoved(item: item, context: context);
              },
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blue[50],
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              child: Text(
                'Movimentar',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
