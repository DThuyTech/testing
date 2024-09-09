import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';
import '../../resource/theme/color.dart';

class ButtonBgRedWidget extends StatelessWidget {
  const ButtonBgRedWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.padding = EdgeInsets.zero,
    this.isEnable = true,
    this.background = blue1,
    this.borderRadius = marginSizeXMedium,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.w400,
    this.textColor = white1,
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
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [grey27, grey29, white1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(marginSizeLarge),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: red1,
              offset: Offset(0, 0),
              blurRadius: 2.5,
              spreadRadius: 3,
            ),
          ],
          color: red1,
          borderRadius: BorderRadius.circular(marginSizeLMedium),
          border: Border.all(color: Colors.transparent),
        ),
        child: ElevatedButton(
          onPressed: isEnable ? onTap : null,
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            elevation: 0,
            shadowColor: red1,
            padding: padding,
            backgroundColor: Colors.transparent,
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
      ),
    );
  }
}
