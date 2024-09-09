import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/mapper/base/base_error_response_mapper.dart';
import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/data/api/middleware/connectivity_interceptor.dart';
import 'package:flutter/foundation.dart';

class ApiClientDefaultSetting {
  const ApiClientDefaultSetting._();

  static const defaultSuccessResponseMapperType = SuccessResponseMapperType.jsonObject;
  static const defaultErrorResponseMapperType = ErrorResponseMapperType.jsonObject;

  // required interceptors
  static List<Interceptor> requiredInterceptors(Dio dio) {
    return [
      if (kDebugMode) 
      ConnectivityInterceptor(),
      
    ];
  }
}
