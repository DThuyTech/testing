import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/data/api/models/base/list_response.dart';
import 'package:display_tracking/shared/model/typedef.dart';

class ListJsonArrayResponseMapper<T extends Object, O extends Object>
    extends BaseSuccessResponseMapper<T, ListResponse<T>> {
  @override
  ListResponse<T>? mapToDataModel(
      {required dynamic response, Decoder<T>? decoder}) {
    return decoder != null && response is Map<String, dynamic>
        ? ListResponse.fromJson(response, (json) => decoder(json))
        : null;
  }
}
