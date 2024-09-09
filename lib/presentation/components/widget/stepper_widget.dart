import 'package:display_tracking/presentation/components/widget/widget.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
    required this.steps,
    required this.color,
    this.initialPage = 0,
    required this.onTap,
    required this.onBack,
    this.buttonName = "NEXT",
  });

  final List<Widget> steps;
  final Color color;
  final int initialPage;
  final Function() onTap;
  final Function() onBack;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        steps[initialPage],
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.1,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      initialPage != 0
                          ? const Icon(
                              Icons.chevron_left_sharp,
                              color: grey9,
                            )
                          : const SizedBox(),
                      ButtonBgWidget(
                        text: 'BACK',
                        onTap: onBack,
                        textColor: grey9,
                        fontWeight: FontWeight.w400,
                        fontSize: textSizeLargeMedium,
                        background: Colors.transparent,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ButtonBgWidget(
                        text: buttonName,
                        onTap: onTap,
                        textColor: grey9,
                        fontWeight: FontWeight.w400,
                        fontSize: textSizeLargeMedium,
                        background: Colors.transparent,
                      ),
                      const Icon(
                        Icons.chevron_right_sharp,
                        color: grey9,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: steps.length,
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          index == initialPage ? color : grey11,
                                    ),
                                    padding: index == initialPage
                                        ? const EdgeInsets.all(4)
                                        : const EdgeInsets.all(2),
                                  ),
                                ],
                              ),
                            ),
                            if (index < steps.length - 1)
                              SizedBox(
                                height: 20,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Transform.translate(
                                    offset: const Offset(0, 22),
                                    child: ConstrainedBox(
                                      constraints:
                                          const BoxConstraints(minWidth: 20),
                                      child: Container(
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
