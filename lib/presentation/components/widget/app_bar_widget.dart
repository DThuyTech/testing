import 'package:display_tracking/di/di.dart';
import 'package:display_tracking/presentation/components/widget/widget.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.contentHeading,
    required this.onBack,
    this.isShowBackIcon = true,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);
  final Function() onBack;
  final String contentHeading;
  final bool isShowBackIcon;
  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  final Size preferredSize;
}

class _AppBarWidgetState extends State<AppBarWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: marginSizeLSmall),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HeaderTrailingWidget(),
              const SizedBox(
                width: marginSizeLSmall,
              ),
              Container(
                padding: const EdgeInsets.all(textSizeNormal),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: red1,
                ),
              )
            ],
          ),
        ),
      ],
      shadowColor: Colors.black,
      leadingWidth: 80,
      leading: Padding(
        padding: const EdgeInsets.only(left: marginSizeXMedium),
        child: GestureDetector(
          onTap: () {
            getIt<AppRouter>().maybePop();
          },
          child: widget.isShowBackIcon ? const BackButtonWidget() : null,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text(
        widget.contentHeading,
        style: const TextStyle(
          fontSize: textSizeMedium,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
