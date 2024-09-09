import 'package:display_tracking/data/api/models/badge_count_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_item_data.freezed.dart';
part 'user_item_data.g.dart';
@freezed
class UserItemData with _$UserItemData {
  const factory UserItemData({
    @JsonKey(name: "badge_counts") BadgeCountData? badgeCounts,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "is_employee") bool? isEmployee,
    @JsonKey(name: "last_modified_date") int? lastModifiedDate,
    @JsonKey(name: "last_access_date") int? lastAccessDate,
    @JsonKey(name: "reputation_change_year") int? reputationChangeYear,
    @JsonKey(name: "reputation_change_quarter") int? reputationChangeQuarter,
    @JsonKey(name: "reputation_change_month") int? reputationChangeMonth,
    @JsonKey(name: "reputation_change_week") int? reputationChangeWeek,
    @JsonKey(name: "reputation_change_day") int? reputationChangeDay,
    @JsonKey(name: "reputation") int? reputation,
    @JsonKey(name: "creation_date") int? creationDate,
    @JsonKey(name: "user_type") String? userType,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "accept_rate") int? acceptRate,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "website_url") String? websiteUrl,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "profile_image") String? profileImage,
    @JsonKey(name: "display_name") String? displayName,
  }) = _UserItemData;

  factory UserItemData.fromJson(Map<String, dynamic> json) =>
      _$UserItemDataFromJson(json);
}
