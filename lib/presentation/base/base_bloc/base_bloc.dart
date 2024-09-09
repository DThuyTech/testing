import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:display_tracking/presentation/base/common/common_bloc.dart';
import 'package:display_tracking/presentation/app/bloc/app_bloc.dart';
import 'package:display_tracking/presentation/exception_handler/exception_handler.dart';
import 'package:display_tracking/shared/shared.dart';
import 'package:flutter/foundation.dart';

part 'base_bloc_event.dart';
part 'base_bloc_state.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState> extends BaseBlocDelegate<E, S> {
  BaseBloc(super.initialState);
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent, S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(super.initialState);

  late final AppBloc appBloc;
  late final CommonBloc _commonBloc;
  late final ExceptionHandler exceptionHandler;
  late final DisposeBag disposeBag;
  

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc => this is CommonBloc ? this as CommonBloc : _commonBloc;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      if (kDebugMode) {
        print('Cannot add new event $event because $runtimeType was closed');
      }
    }
  }

  Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
    commonBloc.add(ExceptionEmitted(appExceptionWrapper: appExceptionWrapper));
    return appExceptionWrapper.exceptionCompleter?.future;
  }

  void showLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: true));
  }

  void hideLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: false));
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnRetry,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function(AppException)? doOnError,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
    bool handleRetry = true,
    bool Function(AppException)? forceHandleError,
    String? overrideErrorMessage,
  }) async {
    Completer<void>? recursion;
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading();
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }

      await doOnSuccessOrError?.call();
    } on AppException catch (e) {
      if (handleLoading) {
        hideLoading();
      }

      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError || (forceHandleError?.call(e) ?? _forceHandleError(e))) {
        await addException(
          AppExceptionWrapper(
            appException: e,
            doOnRetry: doOnRetry ??
                (handleError
                    ? () async {
                        recursion = Completer();
                        await runBlocCatching(
                          action: action,
                          doOnError: doOnError,
                          doOnEventCompleted: doOnEventCompleted,
                          doOnRetry: doOnRetry,
                          doOnSubscribe: doOnSubscribe,
                          doOnSuccessOrError: doOnSuccessOrError,
                          forceHandleError: forceHandleError,
                          handleError: handleError,
                          handleLoading: handleLoading,
                          handleRetry: handleRetry,
                          overrideErrorMessage: overrideErrorMessage,
                        );
                        recursion?.complete();
                      }
                    : null),
            exceptionCompleter: Completer<void>(),
            overrideMessage: overrideErrorMessage,
          ),
        );
      }
    } finally {
      await recursion?.future;
      await doOnEventCompleted?.call();
    }
  }

  bool _forceHandleError(AppException appException) {
    return appException is RemoteException && appException.kind == RemoteExceptionKind.refreshTokenFailed;
  }
}
