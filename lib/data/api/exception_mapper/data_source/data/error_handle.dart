import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/exception_mapper/data_source/data/failure.dart';
import 'package:display_tracking/data/api/exception_mapper/data_source/data_source_extension.dart';
import 'package:display_tracking/data/api/exception_mapper/exception_handle/extension_handle.dart';


import 'data_source.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = handleError(error);
    } else {
      // default error
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}
