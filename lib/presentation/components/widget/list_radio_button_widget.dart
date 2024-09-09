import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class ListRadioButton extends StatefulWidget {
  const ListRadioButton({super.key, required this.contents});

  final List<String> contents;

  @override
  State<ListRadioButton> createState() => _ListRadioButtonState();
}

class _ListRadioButtonState extends State<ListRadioButton> {
  int? _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.contents.length,
      shrinkWrap: true,
      itemBuilder: (builder, index) {
        return radiusButton(
          widget.contents[index],
          (value) => (value) {
            setState(
              () {
                _selectedValue = value;
              },
            );
          },
          index,
        );
      },
    );
  }

  Widget radiusButton(String content, Function(int value) chosing, int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: const TextStyle(
              color: grey3,
              fontSize: textSizeSmall,
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 100, minWidth: 50),
            child: RadioListTile(
              contentPadding: EdgeInsets.zero,
              value: value,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(
                  () {
                    _selectedValue = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
