import 'dart:async';

import 'package:display_tracking/shared/exception/base/app_exception.dart';

class AppExceptionWrapper {
  AppExceptionWrapper({
    required this.appException,
    this.exceptionCompleter,
    this.doOnRetry,
    this.overrideMessage,
  });

  final AppException appException;
  final Completer<void>? exceptionCompleter;
  final Future<void> Function()? doOnRetry;
  final String? overrideMessage;

  @override
  String toString() {
    return 'AppExceptionWrapper(appException: $appException, exceptionCompleter: $exceptionCompleter, doOnRetry: $doOnRetry, overrideMessage: $overrideMessage)';
  }
}
