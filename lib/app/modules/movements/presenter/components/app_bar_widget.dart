import 'package:flutter/material.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';
import 'package:test_handcom_app/app/core/themes/app_texts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Itens aguardando movimentação',
          style: AppTexts.textTitle,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                'Usuário',
                style: AppTexts.textTitle,
              ),
              const SizedBox(width: 5),
              CircleAvatar(
                radius: 8,
                backgroundColor: AppColors.primary,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: AppColors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Icon(
                        size: 12,
                        Icons.person_outline_outlined,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
      bottom: TabBar(
        dividerHeight: 0.5,
        indicatorWeight: 0,
        labelColor: AppColors.primary,
        dividerColor: AppColors.primary,
        indicatorColor: AppColors.primary,
        labelPadding: const EdgeInsets.all(10),
        indicatorSize: TabBarIndicatorSize.values[0],
        indicator: BoxDecoration(color: Colors.blue[100]),
        overlayColor: MaterialStatePropertyAll(AppColors.white),
        tabs: <Widget>[
          Text("Aguardando Movimentação", style: AppTexts.textSubTitleBold),
          Text("Itens Movimentados", style: AppTexts.textSubTitleBold),
        ],
      ),
    );
  }
}
