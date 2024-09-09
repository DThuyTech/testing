// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReputationItem _$ReputationItemFromJson(Map<String, dynamic> json) {
  return _ReputationItem.fromJson(json);
}

/// @nodoc
mixin _$ReputationItem {
  String get reputationHistoryType => throw _privateConstructorUsedError;
  int get reputationChange => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  int get creationDate => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReputationItemCopyWith<ReputationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReputationItemCopyWith<$Res> {
  factory $ReputationItemCopyWith(
          ReputationItem value, $Res Function(ReputationItem) then) =
      _$ReputationItemCopyWithImpl<$Res, ReputationItem>;
  @useResult
  $Res call(
      {String reputationHistoryType,
      int reputationChange,
      int postId,
      int creationDate,
      int userId});
}

/// @nodoc
class _$ReputationItemCopyWithImpl<$Res, $Val extends ReputationItem>
    implements $ReputationItemCopyWith<$Res> {
  _$ReputationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputationHistoryType = null,
    Object? reputationChange = null,
    Object? postId = null,
    Object? creationDate = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      reputationHistoryType: null == reputationHistoryType
          ? _value.reputationHistoryType
          : reputationHistoryType // ignore: cast_nullable_to_non_nullable
              as String,
      reputationChange: null == reputationChange
          ? _value.reputationChange
          : reputationChange // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReputationItemImplCopyWith<$Res>
    implements $ReputationItemCopyWith<$Res> {
  factory _$$ReputationItemImplCopyWith(_$ReputationItemImpl value,
          $Res Function(_$ReputationItemImpl) then) =
      __$$ReputationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reputationHistoryType,
      int reputationChange,
      int postId,
      int creationDate,
      int userId});
}

/// @nodoc
class __$$ReputationItemImplCopyWithImpl<$Res>
    extends _$ReputationItemCopyWithImpl<$Res, _$ReputationItemImpl>
    implements _$$ReputationItemImplCopyWith<$Res> {
  __$$ReputationItemImplCopyWithImpl(
      _$ReputationItemImpl _value, $Res Function(_$ReputationItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reputationHistoryType = null,
    Object? reputationChange = null,
    Object? postId = null,
    Object? creationDate = null,
    Object? userId = null,
  }) {
    return _then(_$ReputationItemImpl(
      reputationHistoryType: null == reputationHistoryType
          ? _value.reputationHistoryType
          : reputationHistoryType // ignore: cast_nullable_to_non_nullable
              as String,
      reputationChange: null == reputationChange
          ? _value.reputationChange
          : reputationChange // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReputationItemImpl implements _ReputationItem {
  const _$ReputationItemImpl(
      {this.reputationHistoryType = '',
      this.reputationChange = 0,
      this.postId = 0,
      this.creationDate = 0,
      this.userId = 0});

  factory _$ReputationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReputationItemImplFromJson(json);

  @override
  @JsonKey()
  final String reputationHistoryType;
  @override
  @JsonKey()
  final int reputationChange;
  @override
  @JsonKey()
  final int postId;
  @override
  @JsonKey()
  final int creationDate;
  @override
  @JsonKey()
  final int userId;

  @override
  String toString() {
    return 'ReputationItem(reputationHistoryType: $reputationHistoryType, reputationChange: $reputationChange, postId: $postId, creationDate: $creationDate, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReputationItemImpl &&
            (identical(other.reputationHistoryType, reputationHistoryType) ||
                other.reputationHistoryType == reputationHistoryType) &&
            (identical(other.reputationChange, reputationChange) ||
                other.reputationChange == reputationChange) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reputationHistoryType,
      reputationChange, postId, creationDate, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReputationItemImplCopyWith<_$ReputationItemImpl> get copyWith =>
      __$$ReputationItemImplCopyWithImpl<_$ReputationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReputationItemImplToJson(
      this,
    );
  }
}

abstract class _ReputationItem implements ReputationItem {
  const factory _ReputationItem(
      {final String reputationHistoryType,
      final int reputationChange,
      final int postId,
      final int creationDate,
      final int userId}) = _$ReputationItemImpl;

  factory _ReputationItem.fromJson(Map<String, dynamic> json) =
      _$ReputationItemImpl.fromJson;

  @override
  String get reputationHistoryType;
  @override
  int get reputationChange;
  @override
  int get postId;
  @override
  int get creationDate;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ReputationItemImplCopyWith<_$ReputationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
