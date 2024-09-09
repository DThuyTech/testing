import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/shared/model/typedef.dart';


class JsonObjectResponseMapper<T extends Object> extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    return decoder != null && response is Map<String, dynamic> ? decoder(response) : null;
  }
}
