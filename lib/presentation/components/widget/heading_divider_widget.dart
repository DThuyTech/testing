import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class HeadingDividerWidget extends StatelessWidget {
  const HeadingDividerWidget({
    super.key,
    required this.content,
  });
  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            content,
            style: const TextStyle(
              color: Colors.black,
              fontSize: textSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: marginSizeMedium,
          ),
          Flexible(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: heightSizeSLarge,
                minWidth: heightSizeXSmall,
              ),
              child: const Divider(
                color: blue1,
                height: widthSizeBorderSmall,
                thickness: widthSizeBorderNormal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
