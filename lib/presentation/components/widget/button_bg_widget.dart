import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';
import '../../resource/theme/color.dart';

class ButtonBgWidget extends StatelessWidget {
  const ButtonBgWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: marginSizeSSmall,
      vertical: marginSizeSSmall,
    ),
    this.isEnable = true,
    this.background = blue1,
    this.borderRadius = marginSizeLMedium,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.w400,
    this.textColor = grey3,
    this.fontSize = textSizeSmall,
    this.borderColor = Colors.transparent,
    this.borderWidth = widthSizeBorderXLarge,
  });

  final String text;
  final bool isEnable;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Color background;
  final VoidCallback onTap;
  final FontStyle fontStyle;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: gradientColor1,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        border: const Border(
          top: BorderSide(width: 1.0, color: grey2),
        ),
      ),
      child: ElevatedButton(
        onPressed: isEnable ? onTap : null,
        style: ElevatedButton.styleFrom(
          padding: padding,
          minimumSize: Size.zero,
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          side: BorderSide(color: borderColor, width: borderWidth),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontStyle: fontStyle,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
