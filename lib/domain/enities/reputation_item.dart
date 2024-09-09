import 'package:freezed_annotation/freezed_annotation.dart';

  part 'reputation_item.freezed.dart';
  part 'reputation_item.g.dart';
@freezed
class ReputationItem with _$ReputationItem {
  const factory ReputationItem({
    @Default('') String reputationHistoryType,
    @Default(0) int reputationChange,
    @Default(0) int postId,
    @Default(0) int creationDate,
    @Default(0) int userId,
  }) = _ReputationItem;

  factory ReputationItem.fromJson(Map<String, dynamic> json) => _$ReputationItemFromJson(json);
}

// ignore: constant_identifier_names
// enum ReputationHistoryType { ANSWER_ACCEPTED, POST_UNUPVOTED, POST_UPVOTED }

// final reputationHistoryTypeValues = EnumValues({
//   "answer_accepted": ReputationHistoryType.ANSWER_ACCEPTED,
//   "post_unupvoted": ReputationHistoryType.POST_UNUPVOTED,
//   "post_upvoted": ReputationHistoryType.POST_UPVOTED
// });

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
