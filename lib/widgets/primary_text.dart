import 'package:flutter/material.dart';
import 'package:my_folio/constants/app_texts.dart';
import 'package:my_folio/enums/padding_type_enum.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final Color? fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double horizontalPadding;
  final double verticalPadding;
  final TextAlign textAlign;
  final bool isResponsive;
  final TextDecoration? textDecoration;
  final PaddingType paddingType;
  final double leftPadding;
  final double rightPadding;
  final double lineHeight;
  final FontStyle fontStyle;
  final TextOverflow textOverflow;
  final bool textAllCaps;
  final double letterSpacing;

  const PrimaryText(
    this.text, {
    super.key,
    this.fontColor = Colors.black,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.horizontalPadding = 0.0,
    this.verticalPadding = 0.0,
    this.textAlign = TextAlign.start,
    this.isResponsive = true,
    this.textDecoration,
    this.paddingType = PaddingType.symmetric,
    this.leftPadding = 0.0,
    this.rightPadding = 0.0,
    this.lineHeight = 1.5,
    this.fontStyle = FontStyle.normal,
    this.textOverflow = TextOverflow.visible,
    this.textAllCaps = false,
    this.letterSpacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingType == PaddingType.symmetric
          ? EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            )
          : EdgeInsets.only(
              left: leftPadding,
              right: rightPadding,
            ),
      child: Text(
        textAllCaps ? text.toUpperCase() : text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
          fontFamily: AppTexts.primaryFontFamily,
          decoration: textDecoration,
          height: lineHeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
        ),
        textScaler: const TextScaler.linear(1),
        textAlign: textAlign,
      ),
    );
  }
}
