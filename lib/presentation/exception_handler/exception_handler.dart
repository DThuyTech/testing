import 'package:display_tracking/di/di.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.gr.dart';
import 'package:display_tracking/shared/exception/base/app_exception.dart';
import 'package:display_tracking/shared/exception/base/app_exception_wrapper.dart';
import 'package:display_tracking/shared/exception/remote/remote_exception.dart';
import 'package:display_tracking/shared/helper/function/function.dart';

class ExceptionHandler {
  const ExceptionHandler({required this.listener});

  final ExceptionHandlerListener listener;

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper,
    String commonExceptionMessage,
  ) async {
    final message = appExceptionWrapper.overrideMessage ?? commonExceptionMessage;

    switch (appExceptionWrapper.appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appExceptionWrapper.appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.refreshTokenFailed:
            await _showErrorDialog(
              isRefreshTokenFailed: true,
              message: message,
              onPressed: Func0(() => getIt<AppRouter>().maybePop()),
            );
            break;
          case RemoteExceptionKind.noInternet:
          case RemoteExceptionKind.timeout:
            await _showErrorDialogWithRetry(
              message: message,
              onRetryPressed: Func0(() async {
                await getIt<AppRouter>().maybePop();
                await appExceptionWrapper.doOnRetry?.call();
              }),
            );
            break;
          default:
            await _showErrorDialog(message: message);
            break;
        }
        break;
      case AppExceptionType.parse:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.uncaught:
        return;
      case AppExceptionType.validation:
        await _showErrorDialog(message: message);
        break;
    }
  }

  void _showErrorSnackBar({
    required String message,
  }) {
    getIt<AppRouter>().push(PopupDialogRoute(content: message));
  }

  Future<void> _showErrorDialog({
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    getIt<AppRouter>().push(PopupDialogRoute(content: message));
  }

  Future<void> _showErrorDialogWithRetry({
    required String message,
    required Func0<void>? onRetryPressed,
  }) async {
    getIt<AppRouter>().push(PopupDialogRoute(content: message));
  }
}

abstract class ExceptionHandlerListener {}
