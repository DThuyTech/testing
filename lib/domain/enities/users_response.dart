
import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_response.freezed.dart';
part 'users_response.g.dart';
@freezed
class UsersResponse with _$UsersResponse {
    const factory UsersResponse({
        @Default([]) List<UserItem> items,
        @Default(false) bool hasMore,
        @Default(0) int quotaMax,
        @Default(0) int quotaRemaining,
    }) = _UsersResponse;

    factory UsersResponse.fromJson(Map<String, dynamic> json) => _$UsersResponseFromJson(json);
}