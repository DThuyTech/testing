import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class GridLinesWidget extends StatelessWidget {
  const GridLinesWidget({super.key,  this.gridColor = Colors.black});
  final Color gridColor;
  @override
  Widget build(BuildContext context) {
     return Stack(
      children: [
        Column(
          children: List.generate(
            3,
            (count) => Expanded(
              child: Row(
                children: List.generate(
                  3,
                  (index) => Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: widthSizeBorderNormal,
                            color:
                                count == 2 ? Colors.transparent : gridColor,
                          ),
                          left: BorderSide(
                            color:
                                index == 0 ? Colors.transparent : gridColor,
                            width: widthSizeBorderNormal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}