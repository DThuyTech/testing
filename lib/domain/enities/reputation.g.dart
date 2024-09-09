// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReputationImpl _$$ReputationImplFromJson(Map<String, dynamic> json) =>
    _$ReputationImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ReputationItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasMore: json['hasMore'] as bool? ?? false,
      quotaMax: json['quotaMax'] as int? ?? 0,
      quotaRemaining: json['quotaRemaining'] as int? ?? 0,
    );

Map<String, dynamic> _$$ReputationImplToJson(_$ReputationImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'hasMore': instance.hasMore,
      'quotaMax': instance.quotaMax,
      'quotaRemaining': instance.quotaRemaining,
    };
