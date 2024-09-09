// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserItemImpl _$$UserItemImplFromJson(Map<String, dynamic> json) =>
    _$UserItemImpl(
      badgeCount: json['badgeCount'] == null
          ? const BadgeCount()
          : BadgeCount.fromJson(json['badgeCount'] as Map<String, dynamic>),
      accountId: json['accountId'] as int? ?? 0,
      isEmployee: json['isEmployee'] as bool? ?? false,
      lastModifiedDate: json['lastModifiedDate'] as int? ?? 0,
      lastAccessDate: json['lastAccessDate'] as int? ?? 0,
      reputationChangeYear: json['reputationChangeYear'] as int? ?? 0,
      reputationChangeQuarter: json['reputationChangeQuarter'] as int? ?? 0,
      reputationChangeMonth: json['reputationChangeMonth'] as int? ?? 0,
      reputationChangeWeek: json['reputationChangeWeek'] as int? ?? 0,
      reputationChangeDay: json['reputationChangeDay'] as int? ?? 0,
      reputation: json['reputation'] as int? ?? 0,
      creationDate: json['creationDate'] as int? ?? 0,
      userType: json['userType'] as String? ?? '',
      userId: json['userId'] as int? ?? 0,
      acceptRate: json['acceptRate'] as int? ?? 0,
      location: json['location'] as String? ?? '',
      websiteUrl: json['websiteUrl'] as String? ?? '',
      link: json['link'] as String? ?? '',
      profileImage: json['profileImage'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
    );

Map<String, dynamic> _$$UserItemImplToJson(_$UserItemImpl instance) =>
    <String, dynamic>{
      'badgeCount': instance.badgeCount,
      'accountId': instance.accountId,
      'isEmployee': instance.isEmployee,
      'lastModifiedDate': instance.lastModifiedDate,
      'lastAccessDate': instance.lastAccessDate,
      'reputationChangeYear': instance.reputationChangeYear,
      'reputationChangeQuarter': instance.reputationChangeQuarter,
      'reputationChangeMonth': instance.reputationChangeMonth,
      'reputationChangeWeek': instance.reputationChangeWeek,
      'reputationChangeDay': instance.reputationChangeDay,
      'reputation': instance.reputation,
      'creationDate': instance.creationDate,
      'userType': instance.userType,
      'userId': instance.userId,
      'acceptRate': instance.acceptRate,
      'location': instance.location,
      'websiteUrl': instance.websiteUrl,
      'link': instance.link,
      'profileImage': instance.profileImage,
      'displayName': instance.displayName,
    };
