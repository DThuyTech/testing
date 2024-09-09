import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class PointsPainter extends CustomPainter {
  final List<Offset> points;
  final Function(List<Offset> points) onChangeOffset;

  PointsPainter(this.points, this.onChangeOffset);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = red1
      ..strokeWidth = widthSizeBorderXLarge
      ..strokeCap = StrokeCap.round;

    for (Offset offset in points) {
      canvas.drawCircle(offset, marginSizeSSmall, paint);
    }
    for (int i = 0; i < points.length; i++) {
      i < points.length - 1
          ? canvas.drawLine(points[i], points[i + 1], paint)
          : canvas.drawLine(points[i], points[0], paint);
    }
  }

  @override
  bool shouldRepaint(PointsPainter oldDelegate) => true;
}

class PointsMovingWidget extends StatefulWidget {
  const PointsMovingWidget({super.key, required this.onChangeOffset});
  final Function(List<Offset> points) onChangeOffset;

  @override
  State<PointsMovingWidget> createState() => _PointsMovingWidgetState();
}

class _PointsMovingWidgetState extends State<PointsMovingWidget> {
  List<Offset> points = [
    const Offset(150, 50),
    const Offset(150, 150),
    const Offset(50, 150),
    const Offset(50, 50),
  ];

  int? selectedPointIndex;
  Offset? dragStartPosition;

  void movePoint(Offset offset) {
    if (selectedPointIndex != null && dragStartPosition != null) {
      final newPosition = points[selectedPointIndex!] + offset;
      final maxX = MediaQuery.of(context).size.width * 0.9;
      final maxY = MediaQuery.of(context).size.height * 0.8;
      const minX = 0.0;
      const minY = 0.0;
      final clampedX = newPosition.dx.clamp(minX, maxX);
      final clampedY = newPosition.dy.clamp(minY, maxY);
      setState(() {
        points[selectedPointIndex!] = Offset(clampedX, clampedY);
        widget.onChangeOffset(points);
      });
    }
  }

  void handleTapDown(TapDownDetails details) {
    final touchOffset = details.localPosition;
    for (int i = 0; i < points.length; i++) {
      if ((points[i] - touchOffset).distance < 100) {
        selectedPointIndex = i;
        dragStartPosition = points[i];
        break;
      }
    }
  }

  void handleTapCancel() {
    selectedPointIndex = null;
    dragStartPosition = null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: GestureDetector(
        onTapDown: handleTapDown,
        onPanUpdate: (details) {
          movePoint(details.delta);
        },
        onPanEnd: (details) {
          handleTapCancel();
        },
        onTapUp: (details) {
          handleTapCancel();
        },
        child: ClipRect(
          child: Stack(
            children: [
              PhysicalModel(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              CustomPaint(
                painter: PointsPainter(points, widget.onChangeOffset),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
