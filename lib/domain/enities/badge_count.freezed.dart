// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadgeCount _$BadgeCountFromJson(Map<String, dynamic> json) {
  return _BadgeCount.fromJson(json);
}

/// @nodoc
mixin _$BadgeCount {
  int get bronze => throw _privateConstructorUsedError;
  int get silver => throw _privateConstructorUsedError;
  int get gold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCountCopyWith<BadgeCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCountCopyWith<$Res> {
  factory $BadgeCountCopyWith(
          BadgeCount value, $Res Function(BadgeCount) then) =
      _$BadgeCountCopyWithImpl<$Res, BadgeCount>;
  @useResult
  $Res call({int bronze, int silver, int gold});
}

/// @nodoc
class _$BadgeCountCopyWithImpl<$Res, $Val extends BadgeCount>
    implements $BadgeCountCopyWith<$Res> {
  _$BadgeCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
  }) {
    return _then(_value.copyWith(
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeCountImplCopyWith<$Res>
    implements $BadgeCountCopyWith<$Res> {
  factory _$$BadgeCountImplCopyWith(
          _$BadgeCountImpl value, $Res Function(_$BadgeCountImpl) then) =
      __$$BadgeCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bronze, int silver, int gold});
}

/// @nodoc
class __$$BadgeCountImplCopyWithImpl<$Res>
    extends _$BadgeCountCopyWithImpl<$Res, _$BadgeCountImpl>
    implements _$$BadgeCountImplCopyWith<$Res> {
  __$$BadgeCountImplCopyWithImpl(
      _$BadgeCountImpl _value, $Res Function(_$BadgeCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = null,
    Object? silver = null,
    Object? gold = null,
  }) {
    return _then(_$BadgeCountImpl(
      bronze: null == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeCountImpl implements _BadgeCount {
  const _$BadgeCountImpl({this.bronze = 0, this.silver = 0, this.gold = 0});

  factory _$BadgeCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeCountImplFromJson(json);

  @override
  @JsonKey()
  final int bronze;
  @override
  @JsonKey()
  final int silver;
  @override
  @JsonKey()
  final int gold;

  @override
  String toString() {
    return 'BadgeCount(bronze: $bronze, silver: $silver, gold: $gold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeCountImpl &&
            (identical(other.bronze, bronze) || other.bronze == bronze) &&
            (identical(other.silver, silver) || other.silver == silver) &&
            (identical(other.gold, gold) || other.gold == gold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bronze, silver, gold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeCountImplCopyWith<_$BadgeCountImpl> get copyWith =>
      __$$BadgeCountImplCopyWithImpl<_$BadgeCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeCountImplToJson(
      this,
    );
  }
}

abstract class _BadgeCount implements BadgeCount {
  const factory _BadgeCount(
      {final int bronze, final int silver, final int gold}) = _$BadgeCountImpl;

  factory _BadgeCount.fromJson(Map<String, dynamic> json) =
      _$BadgeCountImpl.fromJson;

  @override
  int get bronze;
  @override
  int get silver;
  @override
  int get gold;
  @override
  @JsonKey(ignore: true)
  _$$BadgeCountImplCopyWith<_$BadgeCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
