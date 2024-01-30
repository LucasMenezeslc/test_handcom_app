import 'package:flutter/material.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';

class HomeButtom extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const HomeButtom({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 250,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
        child: Text(
          title,
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
