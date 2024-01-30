import 'package:flutter/material.dart';
import 'package:test_handcom_app/app/core/themes/app_colors.dart';

class AppTexts {
  static const TextStyle textTitle =
      TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 13);

  static const TextStyle textTitleBold = TextStyle(
    fontFamily: 'Poppins-SemiBold',
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textTitleGreyBold = TextStyle(
      fontFamily: 'Poppins-SemiBold',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.grey);

  static const TextStyle textSubTitle =
      TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 14);

  static TextStyle textSubTitleBold = TextStyle(
    fontFamily: 'Poppins-SemiBold',
    fontSize: 12,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textOne =
      TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 13);
  static const TextStyle textTwo =
      TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 13);
}
