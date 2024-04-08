import 'package:flutter/material.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/widgets/primary_text.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double verticalPadding;
  final bool textAllCaps;
  final double textSize;
  final FontWeight textWeight;
  final Color textColor;
  final TextDecoration textDecoration;
  final double letterSpacing;
  final bool isResponsive;
  final Color bgColor;
  final double horizontalPadding;
  final double? widthFactor;
  final double borderRadius;
  final Color borderColor;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.verticalPadding = 15.0,
    this.textAllCaps = false,
    this.textSize = 16,
    this.textWeight = FontWeight.w600,
    this.textColor = Colors.white,
    this.textDecoration = TextDecoration.none,
    this.letterSpacing = .8,
    this.isResponsive = true,
    this.bgColor = const Color(AppColors.primaryColor),
    this.horizontalPadding = 25.0,
    this.widthFactor,
    this.borderRadius = 8,
    this.borderColor = const Color(AppColors.primaryColor),
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor,
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: horizontalPadding,
            ),
            child: PrimaryText(
              textAllCaps ? title.toUpperCase() : title,
              textAlign: TextAlign.center,
              fontSize: textSize,
              fontWeight: textWeight,
              fontColor: textColor,
              textDecoration: textDecoration,
              letterSpacing: letterSpacing,
              lineHeight: 0,
            ),
          ),
        ),
      ),
    );
  }
}
