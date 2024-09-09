import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [grey8, Colors.white],
                  begin: Alignment.bottomRight,
                  end: Alignment.centerLeft,
                  stops: [0.4, 0.6]),
            ),
          ),
          BlurryContainer(
            blur: 5,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            child: Container(
              width: 120,
              height: 120,
              color: Colors.transparent,
            ),
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [white2, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.5]),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: red1,
                size: textSizeNormal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
