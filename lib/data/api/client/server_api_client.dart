import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/client/base/api_client.dart';
import 'package:display_tracking/data/api/client/base/dio_client.dart';
import 'package:display_tracking/data/api/middleware/endpoint.dart';
import 'package:display_tracking/data/api/middleware/header_interceptor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ServerApiClient extends ApiClient {
  ServerApiClient(
    HeaderInterceptor headerInterceptor,
  ) : super(
          dio: DioClient.createDio(
            options: BaseOptions(baseUrl: Endpoints.baseURL),
            interceptors: [
              headerInterceptor,
            ],
          ),
        );
}
