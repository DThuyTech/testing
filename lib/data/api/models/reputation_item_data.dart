import 'package:freezed_annotation/freezed_annotation.dart';
part 'reputation_item_data.freezed.dart';
part 'reputation_item_data.g.dart';
@freezed
class ReputationItemData with _$ReputationItemData {
  const factory ReputationItemData({
    @JsonKey(name: "reputation_history_type") String? reputationHistoryType,
    @JsonKey(name: "reputation_change") int? reputationChange,
    @JsonKey(name: "post_id") int? postId,
    @JsonKey(name: "creation_date") int? creationDate,
    @JsonKey(name: "user_id") int? userId,
  }) = _ReputationItemData;

  factory ReputationItemData.fromJson(Map<String, dynamic> json) => _$ReputationItemDataFromJson(json);
}
