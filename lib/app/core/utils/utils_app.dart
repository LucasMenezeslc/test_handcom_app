import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';
import 'package:test_handcom_app/app/core/themes/app_texts.dart';

Future showAlertDialog({
  required String title,
  required String content,
  required BuildContext context,
  required VoidCallback onPressed,
}) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        width: 400,
        child: AlertDialog(
          backgroundColor: AppColors.backgroundColor,
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          content: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title, style: AppTexts.textTitle),
                        IconButton(
                          onPressed: () {
                            Modular.to.pop();
                          },
                          icon: const Icon(Icons.clear, size: 25),
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Text(content, style: AppTexts.textTitle),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 25,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.primary),
                      ),
                      child: Text(
                        'Confirmar',
                        style: TextStyle(color: AppColors.white, fontSize: 8),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
