import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class HeaderTrailingWidget extends StatelessWidget {
  const HeaderTrailingWidget({
    super.key,
    this.header = 'Hi Alex,',
    this.content = 'Hope you have a nice day',
    this.fontSize = textSizeSLarge,
    this.contentSize = textSizeSmall,
    this.crossAxisAlignment = CrossAxisAlignment.end,
  });
  final String header;
  final String content;
  final double fontSize;
  final double contentSize;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          header,
          style: TextStyle(
            height: 0.8,
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          content,
          style: TextStyle(
            color: grey1,
            fontSize: contentSize,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
