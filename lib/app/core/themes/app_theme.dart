import 'package:flutter/material.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';
import 'package:test_handcom_app/app/core/themes/app_texts.dart';

class AppTheme {
  static ThemeData configure() {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: AppTexts.textTitleBold,
        selectedItemColor: AppColors.primary,
        unselectedLabelStyle: AppTexts.textTitleGreyBold,
        unselectedItemColor: AppColors.darkGreyColor,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primary),
        titleTextStyle: TextStyle(
          color: AppColors.black,
        ),
        centerTitle: true,
      ),
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        titleMedium: TextStyle(color: AppColors.darkGreyColor),
      ),
    );
  }
}
