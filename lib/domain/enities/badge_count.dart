import 'package:freezed_annotation/freezed_annotation.dart';
part 'badge_count.freezed.dart';
part 'badge_count.g.dart';

@freezed
class BadgeCount with _$BadgeCount {
  const factory BadgeCount({
    @Default(0) int bronze,
    @Default(0) int silver,
    @Default(0) int gold,
  }) = _BadgeCount;

  factory BadgeCount.fromJson(Map<String, dynamic> json) =>
      _$BadgeCountFromJson(json);
}
