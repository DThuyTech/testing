import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/exception_mapper/data_source/data/data_source.dart';
import 'package:display_tracking/data/api/exception_mapper/data_source/data/failure.dart';
import 'package:display_tracking/data/api/exception_mapper/data_source/data_source_extension.dart';

Failure handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(
          statusCode: error.response?.statusCode ?? 0,
          message: error.response?.statusMessage ?? "",
        );
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    default:
      return DataSource.DEFAULT.getFailure();
  }
}
