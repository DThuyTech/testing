import 'package:dio/dio.dart';
import 'package:display_tracking/data/api/client/base/api_client_default_settings.dart';
import 'package:display_tracking/data/api/exception_mapper/dio_exception_mapper.dart';
import 'package:display_tracking/data/api/mapper/base/base_error_response_mapper.dart';
import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/shared/model/typedef.dart';

enum RequestMethod { get, post, put, patch, delete }

class ApiClient {
  ApiClient({
    required this.dio,
    this.successResponseMapperType =
        ApiClientDefaultSetting.defaultSuccessResponseMapperType,
    this.errorResponseMapperType =
        ApiClientDefaultSetting.defaultErrorResponseMapperType,
  });

  final Dio dio;
  final SuccessResponseMapperType successResponseMapperType;
  final ErrorResponseMapperType errorResponseMapperType;

  Future<T?> request<D extends Object, T extends Object, S extends Object>({
    required RequestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Options? options,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    ErrorResponseMapperType? errorResponseMapperType,
    bool isData = true,
  }) async {
    try {
      final response = await _requestByMethod(
        method: method,
        path: path,
        queryParameters: queryParameters,
        body: body,
        options: Options(
          extra: options?.extra,
          headers: options?.headers,
          contentType: options?.contentType,
          responseType: options?.responseType,
          sendTimeout: options?.sendTimeout,
          receiveTimeout: options?.receiveTimeout,
        ),
      );

      if (response.data == null || decoder == null) {
        return response.data;
      }

      return BaseSuccessResponseMapper<D, T>.fromType(
        successResponseMapperType ?? this.successResponseMapperType,
      ).map(
          response: isData ? response.data["data"] : response.data,
          decoder: decoder);
    } catch (error) {
      throw DioExceptionMapper(
        BaseErrorResponseMapper.fromType(
          errorResponseMapperType ?? this.errorResponseMapperType,
        ),
      ).map(error);
    }
  }

  Future<Response<dynamic>> _requestByMethod({
    required RequestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Options? options,
  }) {
    switch (method) {
      case RequestMethod.get:
        return dio.get(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RequestMethod.post:
        return dio.post(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RequestMethod.patch:
        return dio.patch(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RequestMethod.put:
        return dio.put(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RequestMethod.delete:
        return dio.delete(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
    }
  }
}
