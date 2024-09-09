import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class ProgressDotsLoadingWidget extends StatelessWidget {
  const ProgressDotsLoadingWidget({super.key, this.loadingText = 'Loading...'});

  final String loadingText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Your Progress',
              style: TextStyle(
                fontSize: textSizeSLarge,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: marginSizeXXLarge),
            SizedBox(
              height: 200,
              width: 200,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                        // color: blue4,
                        ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    child: const Text(
                      'In Progress',
                      style: TextStyle(
                        fontSize: textSizeSLarge,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: heightSizeNormal),
            const Text(
              'You have completed almost there.',
              style: TextStyle(
                fontSize: textSizeSmall,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
