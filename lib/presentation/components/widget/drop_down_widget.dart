import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:display_tracking/presentation/shared/extensions/build_extensions.dart';

import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.listItem,
    required this.onSelected,
    this.width = heightSizeXLarge,
    this.padding = const EdgeInsets.symmetric(horizontal: marginSizeLSmall, vertical: marginSizeNormal),
    this.textColor = Colors.black,
    this.fontSize = textSizeMedium,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.labelStyle = const TextStyle(color: grey9, fontWeight: FontWeight.w400, fontFamily: 'Montserrat', fontSize: textSizeSmall),
    this.label,
    this.hintText = '',
    this.requestFocusOnTap = false,
    this.isShowClearIcon = false,
    this.hintColor = grey7,
    this.positionIcon = 0.14,
    this.textEditingController,
    this.onClear,
    this.initialSelection,
    this.enableFilter = true,
    this.menuHeight,
    this.isAutoScale = false,
    this.backgroundColor = Colors.white,
  });

  final List<String> listItem;
  final EdgeInsetsGeometry padding;
  final ValueChanged<String?> onSelected;
  final double width;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final String hintText;
  final bool requestFocusOnTap;
  final bool isShowClearIcon;
  final double positionIcon;
  final TextEditingController? textEditingController;
  final VoidCallback? onClear;
  final String? initialSelection;
  final bool enableFilter;
  final double? menuHeight;
  final Color? hintColor;
  final bool isAutoScale;
  final String? label;
  final TextStyle labelStyle;
  final Color backgroundColor;

  String changeTextLenght(BuildContext context, String content) {
    final double textWidth = content.length * fontSize;
    final double screenWidth = MediaQuery.sizeOf(context).width * 0.8;

    if (textWidth > screenWidth && content.isNotEmpty) {
      final int indexInt = (screenWidth ~/ fontSize).toInt();
      final String firstPart = content.substring(0, indexInt);
      final String secondPart = changeTextLenght(context, content.substring(indexInt));
      return '$firstPart\n$secondPart';
    }

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(label!, style: labelStyle),
          ),
          const SizedBox(height: marginSizeSmall),
        ],
        const SizedBox(height: marginSizeLSmall),
        Theme(
          data: context.theme.copyWith(splashColor: Colors.transparent),
          child: Container(
            decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(32)),
            width: width,
            child: Stack(
              children: [
                DropdownMenu<String>(
                  menuHeight: menuHeight,
                  initialSelection: initialSelection,
                  hintText: hintText,
                  controller: textEditingController,
                  requestFocusOnTap: requestFocusOnTap,
                  enableFilter: enableFilter,
                  width: width,
                  textStyle: TextStyle(
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                    color: textColor,
                    fontStyle: fontStyle,
                  ),
                  menuStyle: MenuStyle(
                    surfaceTintColor: const WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
                    maximumSize: WidgetStateProperty.all(Size(width, widthSizeNormal)),
                  ),
                  inputDecorationTheme: InputDecorationTheme(
                    hintStyle: TextStyle(color: hintColor),
                    constraints: BoxConstraints(maxWidth: width, maxHeight: heightSizeLarge),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: grey8),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    contentPadding: padding,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32), borderSide: const BorderSide(color: grey9)),
                  ),
                  trailingIcon: Container(
                    padding: const EdgeInsets.only(right: marginSizeSSmall),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: marginSizeLMedium,
                    ),
                  ),
                  selectedTrailingIcon: Container(
                    padding: const EdgeInsets.only(right: marginSizeSSmall),
                    decoration: const BoxDecoration(
                        border: Border(
                            left: BorderSide(
                      color: Colors.black,
                    ))),
                    child: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: marginSizeLMedium,
                    ),
                  ),
                  dropdownMenuEntries: listItem.map((item) {
                    return DropdownMenuEntry(
                      value: item,
                      label: isAutoScale ? changeTextLenght(context, item) : item,
                    );
                  }).toList(),
                  onSelected: onSelected,
                ),
                if (isShowClearIcon)
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: width * positionIcon,
                    child: GestureDetector(
                      onTap: onClear,
                      child: const Icon(Icons.close_outlined, color: grey8),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
