import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.onChanged,
    this.enabled = true,
    this.fillColor = Colors.white,
    this.hint,
    this.counterText,
    this.hintTextSize = textSizeSMedium,
    this.contentPadding = const EdgeInsets.symmetric(
        horizontal: marginSizeXMedium, vertical: marginSizeXMedium),
    this.enabledBorder = true,
    this.isValid = false,
    this.showPassword,
    this.isSecureField = false,
    this.suffixIcon,
    this.autocorrect = false,
    this.labelStyle = const TextStyle(
        color: grey9,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        fontSize: textSizeSmall),
    this.label,
    this.controller,
    this.autoFocus = true,
    this.contentStyle =
        const TextStyle(color: Colors.black, fontSize: textSizeMedium),
    this.maxLine = 1,
    this.maxLengh,
    this.radius = heightSizeSLarge,
    this.hintColor = grey29,
    this.hintWeight = FontWeight.w400,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
  });
  final TextEditingController? controller;
  final String? counterText;
  final bool isSecureField;
  final Widget? suffixIcon;
  final bool autocorrect;
  final String? hint;
  final bool enabled;
  final Color fillColor;
  final double hintTextSize;
  final EdgeInsets contentPadding;
  final bool enabledBorder;
  final bool isValid;
  final VoidCallback? showPassword;
  final String? label;
  final TextStyle labelStyle;
  final TextStyle contentStyle;
  final bool autoFocus;
  final int maxLine;
  final int? maxLengh;
  final double radius;
  final Color hintColor;
  final FontWeight hintWeight;
  final Function(String?) onChanged;
  final TextInputType textInputType;
  final Widget? prefixIcon;
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
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: gradientColor1,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(radius),
            border: Border(
              top: BorderSide(
                  width: 1.0,
                  color: !enabledBorder ? grey2 : Colors.transparent),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: gradientColor1,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.black,
              autocorrect: autocorrect,
              autofocus: autoFocus,
              enabled: enabled,
              obscureText: isSecureField,
              enableSuggestions: !isSecureField,
              maxLength: maxLengh,
              keyboardType: textInputType,
              maxLines: maxLine,
              style: contentStyle,
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                fillColor: enabled ? Colors.transparent : grey9,
                hintText: hint,
                counterText: counterText ?? '',
                counterStyle: const TextStyle(height: 20),
                hintStyle: TextStyle(
                  fontSize: hintTextSize,
                  color: hintColor,
                  fontWeight: hintWeight,
                ),
                contentPadding: contentPadding,
                enabledBorder: enabledBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius),
                        borderSide: !isValid
                            ? const BorderSide(color: grey8)
                            : const BorderSide(color: red1),
                      )
                    : const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                disabledBorder: enabledBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius),
                        borderSide: !isValid
                            ? const BorderSide(color: grey18)
                            : const BorderSide(color: red1),
                      )
                    : const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: enabledBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius),
                        borderSide: !isValid
                            ? const BorderSide(color: grey18, width: 1)
                            : const BorderSide(color: red1),
                      )
                    : const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius),
                    borderSide: const BorderSide(color: Colors.transparent)),
                prefixIcon: prefixIcon,
                suffixIcon: showPassword != null
                    ? InkWell(
                        onTap: showPassword,
                        child: isSecureField
                            ? const Icon(Icons.visibility_off_outlined,
                                color: blue1, size: 24)
                            : const Icon(Icons.visibility_outlined,
                                color: blue1, size: 24),
                      )
                    : suffixIcon,
              ),
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
