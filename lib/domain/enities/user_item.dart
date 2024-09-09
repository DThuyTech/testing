import 'package:display_tracking/domain/enities/badge_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_item.freezed.dart';
part 'user_item.g.dart';
@freezed
class UserItem with _$UserItem {
  const factory UserItem({
    @Default(BadgeCount()) BadgeCount badgeCount,
    @Default(0) int accountId,
    @Default(false) bool isEmployee,
    @Default(0) int lastModifiedDate,
    @Default(0) int lastAccessDate,
    @Default(0) int reputationChangeYear,
    @Default(0) int reputationChangeQuarter,
    @Default(0) int reputationChangeMonth,
    @Default(0) int reputationChangeWeek,
    @Default(0) int reputationChangeDay,
    @Default(0) int reputation,
    @Default(0) int creationDate,
    @Default('') String userType,
    @Default(0) int userId,
    @Default(0) int acceptRate,
    @Default('') String location,
    @Default('') String websiteUrl,
    @Default('') String link,
    @Default('') String profileImage,
    @Default('') String displayName,
  }) = _UserItem;

  factory UserItem.fromJson(Map<String, dynamic> json) =>
      _$UserItemFromJson(json);
}
