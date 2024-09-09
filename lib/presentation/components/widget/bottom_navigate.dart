import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class BottomNavigate extends StatelessWidget {
  const BottomNavigate(
      {super.key,
      required this.changeToHomeScreen,
      required this.changeToProfileScreen});
  final Function() changeToHomeScreen;
  final Function() changeToProfileScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: textSizeXXLarge,
      padding: const EdgeInsets.symmetric(horizontal: heightSizeNormal),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: blue1.withOpacity(0.25),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: changeToHomeScreen,
            child: const Icon(
              Icons.home_filled,
              color: grey6,
            ),
          ),
          Row(children: [
            Image.asset(
              'assets/material/Logo.png',
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: marginSizeSmall,
            ),
            const Text(
              'AGAI',
              style: TextStyle(
                fontSize: textSizeSMedium,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            )
          ]),
          InkWell(
            onTap: changeToProfileScreen,
            child: const Icon(
              Icons.person_outline_rounded,
              color: grey6,
            ),
          ),
        ],
      ),
    );
  }
}
