import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/shared/model/typedef.dart';


class ArrayJsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, List<List<T>>> {
  @override
  List<List<T>>? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    return decoder != null && response is List
        ? response.map((jsonList) {
            return (jsonList as List).map((jsonObject) {
              return decoder(jsonObject as Map<String, dynamic>);
            }).toList(growable: false);
          }).toList(growable: false)
        : null;
  }
}
