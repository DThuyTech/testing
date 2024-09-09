import 'package:display_tracking/data/api/models/user_item_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_response_data.freezed.dart';
part 'users_response_data.g.dart';
@freezed
class UsersResponseData with _$UsersResponseData {
  const factory UsersResponseData({
    @JsonKey(name: "items") List<UserItemData>? items,
    @JsonKey(name: "has_more") bool? hasMore,
    @JsonKey(name: "quota_max") int? quotaMax,
    @JsonKey(name: "quota_remaining") int? quotaRemaining,
  }) = _UsersResponseData;

  factory UsersResponseData.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseDataFromJson(json);
}
