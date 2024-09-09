// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersResponseImpl _$$UsersResponseImplFromJson(Map<String, dynamic> json) =>
    _$UsersResponseImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => UserItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasMore: json['hasMore'] as bool? ?? false,
      quotaMax: json['quotaMax'] as int? ?? 0,
      quotaRemaining: json['quotaRemaining'] as int? ?? 0,
    );

Map<String, dynamic> _$$UsersResponseImplToJson(_$UsersResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'hasMore': instance.hasMore,
      'quotaMax': instance.quotaMax,
      'quotaRemaining': instance.quotaRemaining,
    };
