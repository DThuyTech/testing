import 'package:display_tracking/data/api/mapper/base_success_response_mapper/array_json_array_response_mapper.dart';
import 'package:display_tracking/data/api/mapper/base_success_response_mapper/json_array_error_response_mapper.dart';
import 'package:display_tracking/data/api/mapper/base_success_response_mapper/json_object_response_mapper.dart';
import 'package:display_tracking/data/api/mapper/base_success_response_mapper/list_json_array_response_mapper.dart';
import 'package:display_tracking/shared/model/typedef.dart';


enum SuccessResponseMapperType {
  jsonObject,
  jsonArray,
  arrayJsonArray,
  listJsonArray,
}

abstract class BaseSuccessResponseMapper<I extends Object, O extends Object> {
  const BaseSuccessResponseMapper();

  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    return switch (type) {
      SuccessResponseMapperType.jsonObject =>
        JsonObjectResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.jsonArray =>
        JsonArrayResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.arrayJsonArray =>
        ArrayJsonArrayResponseMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.listJsonArray =>
        ListJsonArrayResponseMapper<I,O>() as BaseSuccessResponseMapper<I, O>,
    };
  }

  O? map({required dynamic response, Decoder<I>? decoder}) {
    assert(response != null);
    return mapToDataModel(response: response, decoder: decoder);
  }

  O? mapToDataModel({required dynamic response, Decoder<I>? decoder});
}
