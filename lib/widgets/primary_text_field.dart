import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/constants/app_styles.dart';
import 'package:my_folio/constants/app_texts.dart';
import 'package:my_folio/utils/typedefs.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}

class PrimaryTextField extends StatelessWidget {
  final TextAlign textAlignment;
  final FormFieldValidator<String>? validator;
  final TextInputType textInputType;
  final TextStyle labelStyle;
  final TextStyle floatingLabelStyle;
  final TextEditingController? controller;
  final OnSaved? onSaved;
  final int? maxLength;
  final FocusNode? focusNode;
  final double editTextSize;
  final FontWeight editTextWeight;
  final double editLabelSize;
  final FontWeight editLabelWeight;
  final bool isRequired;
  final double focusedTopLeftBorderRadius;
  final double focusedTopRightBorderRadius;
  final bool isResponsive;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Color fillColor;
  final Color enabledUnderlineBorderColor;
  final bool showCounterText;
  final double verticalContentPadding;
  final double? disabledHeight;
  final int maxLines;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String hint;
  final double fieldHeight;
  final double fieldWidth;
  final bool enabled;
  final bool isDense;
  final EdgeInsets? contentPadding;
  final double hintFontSize;
  final Color hintFontColor;
  final Color enabledBorderColor;
  final Color? focusedBorderColor;
  final FontWeight hintFontWeight;

  const PrimaryTextField({
    super.key,
    this.textAlignment = TextAlign.start,
    this.validator,
    this.textInputType = TextInputType.text,
    this.labelStyle = AppStyles.labelStyle,
    this.floatingLabelStyle = AppStyles.floatingLabelStyle,
    this.controller,
    this.onSaved,
    this.maxLength,
    this.focusNode,
    this.editTextSize = 16,
    this.editTextWeight = FontWeight.w400,
    this.editLabelSize = 16,
    this.editLabelWeight = FontWeight.w500,
    this.isRequired = false,
    this.focusedTopLeftBorderRadius = 4,
    this.focusedTopRightBorderRadius = 4,
    this.isResponsive = false,
    this.textCapitalization = TextCapitalization.words,
    this.inputFormatters,
    this.suffix,
    this.fillColor = AppColors.grey300Color,
    this.enabledUnderlineBorderColor = Colors.transparent,
    this.showCounterText = false,
    this.verticalContentPadding = 0,
    this.disabledHeight,
    this.maxLines = 1,
    this.onFieldSubmitted,
    this.hint = "Enter here",
    this.fieldHeight = 70,
    this.fieldWidth = double.infinity,
    this.enabled = true,
    this.isDense = false,
    this.contentPadding,
    this.onChanged,
    this.hintFontSize = 14,
    this.hintFontColor = AppColors.grey500Color,
    this.enabledBorderColor = AppColors.grey300Color,
    this.focusedBorderColor,
    this.hintFontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fieldHeight,
      width: fieldWidth,
      child: TextFormField(
        onChanged: onChanged,
        enabled: enabled,
        maxLines: maxLines,
        inputFormatters: inputFormatters,
        onFieldSubmitted: onFieldSubmitted,
        textCapitalization: textCapitalization,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        focusNode: focusNode,
        maxLength: maxLength,
        onSaved: onSaved,
        validator: validator,
        controller: controller,
        keyboardType: textInputType,
        textAlign: textAlignment,
        style: TextStyle(
          fontFamily: AppTexts.primaryFontFamily,
          fontWeight: editTextWeight,
          fontSize: editTextSize,
        ),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            height: 0.5,
            fontSize: 11,
          ),
          counterText: '',
          suffixIcon: suffix,
          isDense: isDense,
          contentPadding: contentPadding,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: hint,
          hintStyle: TextStyle(
            color: hintFontColor,
            fontSize: hintFontSize,
            fontWeight: hintFontWeight,
          ),
          fillColor: Colors.white,
          floatingLabelStyle: floatingLabelStyle,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grey300Color),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enabledBorderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusedBorderColor ??
                  AppColors.primaryMaterialColor[300] ??
                  const Color(AppColors.primaryColor),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
        ),
      ),
    );
  }
}
