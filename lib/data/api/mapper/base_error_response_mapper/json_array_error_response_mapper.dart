
import 'package:display_tracking/data/api/mapper/base/base_error_response_mapper.dart';
import 'package:display_tracking/shared/exception/remote/server_error.dart';
import 'package:display_tracking/shared/exception/remote/server_error_detail.dart';

class JsonArrayErrorResponseMapper extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  ServerError mapToServerError(List<dynamic>? errorResponse) {
    return ServerError(
      errors: errorResponse?.map((jsonObject) {
            return ServerErrorDetail(
              serverStatusCode: jsonObject['code'] as int?,
              message: jsonObject['message'] as String?,
            );
          }).toList(growable: false) ??
          [],
    );
  }
}
