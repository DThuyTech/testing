import 'dart:io';

import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/mapper/base/base_error_response_mapper.dart';
import 'package:display_tracking/shared/exception/base/exception_mapper.dart';
import 'package:display_tracking/shared/exception/remote/remote_exception.dart';

class DioExceptionMapper extends ExceptionMapper<RemoteException> {
  DioExceptionMapper(this._errorResponseMapper);

  final BaseErrorResponseMapper _errorResponseMapper;

  @override
  RemoteException map(Object? exception) {
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return const RemoteException(kind: RemoteExceptionKind.cancellation);
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return RemoteException(
            kind: RemoteExceptionKind.timeout,
            rootException: exception,
          );
        case DioExceptionType.badResponse:
          final httpErrorCode = exception.response?.statusCode ?? -1;

          /// server-defined error
          if (exception.response?.data != null) {
            final serverError = _errorResponseMapper.map(exception.response!.data!);

            if (httpErrorCode == 401) {
              return RemoteException(
                kind: RemoteExceptionKind.refreshTokenFailed,
                httpErrorCode: httpErrorCode,
                serverError: serverError,
              );
            }

            return RemoteException(
              kind: RemoteExceptionKind.serverDefined,
              httpErrorCode: httpErrorCode,
              serverError: serverError,
            );
          }

          return RemoteException(
            kind: RemoteExceptionKind.serverUndefined,
            httpErrorCode: httpErrorCode,
            rootException: exception,
          );
        case DioExceptionType.connectionError:
          return RemoteException(
            kind: RemoteExceptionKind.network,
            rootException: exception,
          );
        case DioExceptionType.unknown:
          if (exception.error is SocketException) {
            return RemoteException(
              kind: RemoteExceptionKind.network,
              rootException: exception,
            );
          }

          if (exception.error is RemoteException) {
            return exception.error as RemoteException;
          }
        case DioExceptionType.badCertificate:
          return RemoteException(
            kind: RemoteExceptionKind.badCertificate,
            rootException: exception,
          );
      }
    }

    return RemoteException(
      kind: RemoteExceptionKind.unknown,
      rootException: exception,
    );
  }
}
