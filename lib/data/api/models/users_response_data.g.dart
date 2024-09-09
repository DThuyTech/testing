// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersResponseDataImpl _$$UsersResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersResponseDataImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => UserItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['has_more'] as bool?,
      quotaMax: json['quota_max'] as int?,
      quotaRemaining: json['quota_remaining'] as int?,
    );

Map<String, dynamic> _$$UsersResponseDataImplToJson(
        _$UsersResponseDataImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'has_more': instance.hasMore,
      'quota_max': instance.quotaMax,
      'quota_remaining': instance.quotaRemaining,
    };
