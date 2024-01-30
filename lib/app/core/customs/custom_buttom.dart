import 'package:flutter/material.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';

class CustomButtom extends StatelessWidget {
  final IconData? icon;
  final String title;
  final bool enabledIcon;
  final bool enabledColor;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const CustomButtom({
    super.key,
    this.icon,
    required this.title,
    required this.enabledIcon,
    required this.enabledColor,
    this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 33,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(left: 10, right: 10)),
            shape: MaterialStateProperty.all(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            backgroundColor: enabledColor
                ? MaterialStateProperty.all(backgroundColor)
                : MaterialStateProperty.all(
                    const Color.fromARGB(255, 216, 227, 238)),
          ),
          child: enabledIcon
              ? Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 18,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
