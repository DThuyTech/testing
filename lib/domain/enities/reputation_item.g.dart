// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReputationItemImpl _$$ReputationItemImplFromJson(Map<String, dynamic> json) =>
    _$ReputationItemImpl(
      reputationHistoryType: json['reputationHistoryType'] as String? ?? '',
      reputationChange: json['reputationChange'] as int? ?? 0,
      postId: json['postId'] as int? ?? 0,
      creationDate: json['creationDate'] as int? ?? 0,
      userId: json['userId'] as int? ?? 0,
    );

Map<String, dynamic> _$$ReputationItemImplToJson(
        _$ReputationItemImpl instance) =>
    <String, dynamic>{
      'reputationHistoryType': instance.reputationHistoryType,
      'reputationChange': instance.reputationChange,
      'postId': instance.postId,
      'creationDate': instance.creationDate,
      'userId': instance.userId,
    };
