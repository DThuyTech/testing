import 'dart:async';

import 'package:display_tracking/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewUtils {
  const ViewUtils._();

  static void showAppSnackBar(
    BuildContext context,
    String message, {
    Duration? duration,
    Color? backgroundColor,
  }) {
    final messengerState = ScaffoldMessenger.maybeOf(context);
    if (messengerState == null) return;
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ?? DurationConstants.defaultSnackBarDuration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static void hideKeyboard(BuildContext context) {
    if (!context.focusScope.hasPrimaryFocus && context.focusScope.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) {
    return SystemChrome.setPreferredOrientations(orientations);
  }

  /// set status bar color & navigation bar color
  static void setSystemUIOverlayStyle(SystemUiOverlayStyle systemUiOverlayStyle) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  /// display status bar on IOS devices
  static void setSystemUIOverlay() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static Offset? getWidgetPosition(GlobalKey globalKey) {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?)?.let((it) => it.localToGlobal(Offset.zero));
  }

  static double? getWidgetWidth(GlobalKey globalKey) {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?)?.let((it) => it.size.width);
  }

  static double? getWidgetHeight(GlobalKey globalKey) {
    return (globalKey.currentContext?.findRenderObject() as RenderBox?)?.let((it) => it.size.height);
  }

  //get size of image
  static Future<Size> calculateImageDimension(String url) async {
    Completer<Size> completer = Completer();
    Image.network(url, headers: const {
      'Cache-Control': 'max-age=0',
    }).image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener((ImageInfo info, bool _) {
        completer.complete(Size(info.image.width.toDouble(), info.image.height.toDouble()));
      }),
    );
    return completer.future;
  }

  //change bounding box

}
