import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'base_interceptor.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  HeaderInterceptor();

  Map<String, dynamic> _headers = {
    'Accept': 'application/json',
  };

  @override
  int get priority => BaseInterceptor.headerPriority;

  set headers(Map<String, dynamic> headers) {
    _headers = headers;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(_headers);
    // const storage = FlutterSecureStorage();
    // final token = await storage.read(key: 'token');
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    handler.next(options);
  }
}
