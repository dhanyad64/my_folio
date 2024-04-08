import 'package:flutter/material.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/constants/app_texts.dart';

class AppStyles {
  // text_styles
  static const TextStyle labelStyle = TextStyle(
    fontFamily: AppTexts.primaryFontFamily,
    fontSize: 16,
    color: AppColors.grey600Color,
  );

  static const TextStyle floatingLabelStyle = TextStyle(
    fontFamily: AppTexts.primaryFontFamily,
    fontWeight: FontWeight.w500,
  );
}
