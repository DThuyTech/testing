// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReputationItemDataImpl _$$ReputationItemDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReputationItemDataImpl(
      reputationHistoryType: json['reputation_history_type'] as String?,
      reputationChange: json['reputation_change'] as int?,
      postId: json['post_id'] as int?,
      creationDate: json['creation_date'] as int?,
      userId: json['user_id'] as int?,
    );

Map<String, dynamic> _$$ReputationItemDataImplToJson(
        _$ReputationItemDataImpl instance) =>
    <String, dynamic>{
      'reputation_history_type': instance.reputationHistoryType,
      'reputation_change': instance.reputationChange,
      'post_id': instance.postId,
      'creation_date': instance.creationDate,
      'user_id': instance.userId,
    };
