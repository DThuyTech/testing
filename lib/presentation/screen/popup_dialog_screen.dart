import 'package:auto_route/auto_route.dart';
import 'package:display_tracking/di/di.dart';
import 'package:display_tracking/presentation/components/widget/button_bg_widget.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PopupDialogScreen extends StatefulWidget {
  const PopupDialogScreen({
    super.key,
    required this.content,
    this.fontColor,
  });
  final String content;
  final Color? fontColor;

  @override
  State<PopupDialogScreen> createState() => _PopupDialogScreenState();
}

class _PopupDialogScreenState extends State<PopupDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.3),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: _PopupContainer(
          content: widget.content,
          fontColor: widget.fontColor ?? blue1,
        ),
      ),
    );
  }
}

class _PopupContainer extends StatelessWidget {
  const _PopupContainer({
    required this.content,
    this.fontColor = blue1,
  });
  final String content;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: marginSizeXMedium, horizontal: marginSizeLSmall),
      width: MediaQuery.sizeOf(context).width * 0.65,
      height: MediaQuery.sizeOf(context).width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: marginSizeSMedium,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: fontColor,
              fontSize: textSizeMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: marginSizeMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 50,
                child: ButtonBgWidget(
                  borderRadius: defaultMargin,
                  text: 'Close',
                  onTap: ()  {
                    getIt<AppRouter>().maybePop();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: marginSizeMedium,
          ),
        ],
      ),
    );
  }
}
