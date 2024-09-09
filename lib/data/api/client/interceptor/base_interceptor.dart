// import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class BaseInterceptor extends Interceptor {
//   @override
//   Future<void> onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     const storage = FlutterSecureStorage();
//     String? token = await storage.read(key: 'token');
//     if (token != null) {
//       options.headers['Authorization'] = 'Bearer $token';
//     } 
//     super.onRequest(options, handler);
//   }
// }
