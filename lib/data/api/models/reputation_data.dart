import 'package:display_tracking/data/api/models/reputation_item_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation_data.freezed.dart';
part 'reputation_data.g.dart';

@freezed
class ReputationData with _$ReputationData {
  const factory ReputationData({
    @JsonKey(name: "items") List<ReputationItemData>? items,
    @JsonKey(name: "has_more") bool? hasMore,
    @JsonKey(name: "quota_max") int? quotaMax,
    @JsonKey(name: "quota_remaining") int? quotaRemaining,
  }) = _ReputationData;

  factory ReputationData.fromJson(Map<String, dynamic> json) =>
      _$ReputationDataFromJson(json);
}
