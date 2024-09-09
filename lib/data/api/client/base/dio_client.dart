import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/client/base/api_client_default_settings.dart';
import 'package:display_tracking/data/api/middleware/endpoint.dart';
import 'package:display_tracking/shared/constants/server/server_timeout_constants.dart';

class DioClient {
  const DioClient._();

  static Dio createDio({
    BaseOptions? options,
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        connectTimeout:
            options?.connectTimeout ?? ServerTimeoutConstants.connectTimeout,
        receiveTimeout:
            options?.receiveTimeout ?? ServerTimeoutConstants.receiveTimeout,
        baseUrl: options?.baseUrl ?? Endpoints.baseURL,
      ),
    );

    final sortedInterceptors = [
      ...ApiClientDefaultSetting.requiredInterceptors(dio),
      ...interceptors,
    ];

    dio.interceptors.addAll(sortedInterceptors);

    return dio;
  }
}
