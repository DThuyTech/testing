import 'package:display_tracking/domain/enities/reputation_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation.freezed.dart';
part 'reputation.g.dart';

@freezed
class Reputation with _$Reputation {
  const factory Reputation({
   @Default([]) List<ReputationItem> items,
   @Default(false) bool hasMore,
   @Default(0) int quotaMax,
   @Default(0) int quotaRemaining,
  }) = _Reputation;

  factory Reputation.fromJson(Map<String, dynamic> json) =>
      _$ReputationFromJson(json);
}
