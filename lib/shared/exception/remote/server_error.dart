import 'package:display_tracking/shared/exception/remote/server_error_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';

@freezed
class ServerError with _$ServerError {
  const factory ServerError({
    /// server-defined status code
    int? generalServerStatusCode,

    /// server-defined error id
    String? generalServerErrorId,

    /// server-defined message
    String? generalMessage,
    @Default(<ServerErrorDetail>[]) List<ServerErrorDetail> errors,
  }) = _ServerError;
}
