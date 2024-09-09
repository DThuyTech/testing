// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReputationDataImpl _$$ReputationDataImplFromJson(Map<String, dynamic> json) =>
    _$ReputationDataImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ReputationItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['has_more'] as bool?,
      quotaMax: json['quota_max'] as int?,
      quotaRemaining: json['quota_remaining'] as int?,
    );

Map<String, dynamic> _$$ReputationDataImplToJson(
        _$ReputationDataImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'has_more': instance.hasMore,
      'quota_max': instance.quotaMax,
      'quota_remaining': instance.quotaRemaining,
    };
