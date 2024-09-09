import 'package:freezed_annotation/freezed_annotation.dart';
part 'badge_count_data.freezed.dart';
part 'badge_count_data.g.dart';

@freezed
class BadgeCountData with _$BadgeCountData {
  const factory BadgeCountData({
    @JsonKey(name: "bronze") int? bronze,
    @JsonKey(name: "silver") int? silver,
    @JsonKey(name: "gold") int? gold,
  }) = _BadgeCountData;

  factory BadgeCountData.fromJson(Map<String, dynamic> json) =>
      _$BadgeCountDataFromJson(json);
}
