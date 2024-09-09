// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadgeCountData _$BadgeCountDataFromJson(Map<String, dynamic> json) {
  return _BadgeCountData.fromJson(json);
}

/// @nodoc
mixin _$BadgeCountData {
  @JsonKey(name: "bronze")
  int? get bronze => throw _privateConstructorUsedError;
  @JsonKey(name: "silver")
  int? get silver => throw _privateConstructorUsedError;
  @JsonKey(name: "gold")
  int? get gold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCountDataCopyWith<BadgeCountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCountDataCopyWith<$Res> {
  factory $BadgeCountDataCopyWith(
          BadgeCountData value, $Res Function(BadgeCountData) then) =
      _$BadgeCountDataCopyWithImpl<$Res, BadgeCountData>;
  @useResult
  $Res call(
      {@JsonKey(name: "bronze") int? bronze,
      @JsonKey(name: "silver") int? silver,
      @JsonKey(name: "gold") int? gold});
}

/// @nodoc
class _$BadgeCountDataCopyWithImpl<$Res, $Val extends BadgeCountData>
    implements $BadgeCountDataCopyWith<$Res> {
  _$BadgeCountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = freezed,
    Object? silver = freezed,
    Object? gold = freezed,
  }) {
    return _then(_value.copyWith(
      bronze: freezed == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeCountDataImplCopyWith<$Res>
    implements $BadgeCountDataCopyWith<$Res> {
  factory _$$BadgeCountDataImplCopyWith(_$BadgeCountDataImpl value,
          $Res Function(_$BadgeCountDataImpl) then) =
      __$$BadgeCountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bronze") int? bronze,
      @JsonKey(name: "silver") int? silver,
      @JsonKey(name: "gold") int? gold});
}

/// @nodoc
class __$$BadgeCountDataImplCopyWithImpl<$Res>
    extends _$BadgeCountDataCopyWithImpl<$Res, _$BadgeCountDataImpl>
    implements _$$BadgeCountDataImplCopyWith<$Res> {
  __$$BadgeCountDataImplCopyWithImpl(
      _$BadgeCountDataImpl _value, $Res Function(_$BadgeCountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bronze = freezed,
    Object? silver = freezed,
    Object? gold = freezed,
  }) {
    return _then(_$BadgeCountDataImpl(
      bronze: freezed == bronze
          ? _value.bronze
          : bronze // ignore: cast_nullable_to_non_nullable
              as int?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as int?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeCountDataImpl implements _BadgeCountData {
  const _$BadgeCountDataImpl(
      {@JsonKey(name: "bronze") this.bronze,
      @JsonKey(name: "silver") this.silver,
      @JsonKey(name: "gold") this.gold});

  factory _$BadgeCountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeCountDataImplFromJson(json);

  @override
  @JsonKey(name: "bronze")
  final int? bronze;
  @override
  @JsonKey(name: "silver")
  final int? silver;
  @override
  @JsonKey(name: "gold")
  final int? gold;

  @override
  String toString() {
    return 'BadgeCountData(bronze: $bronze, silver: $silver, gold: $gold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeCountDataImpl &&
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
  _$$BadgeCountDataImplCopyWith<_$BadgeCountDataImpl> get copyWith =>
      __$$BadgeCountDataImplCopyWithImpl<_$BadgeCountDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeCountDataImplToJson(
      this,
    );
  }
}

abstract class _BadgeCountData implements BadgeCountData {
  const factory _BadgeCountData(
      {@JsonKey(name: "bronze") final int? bronze,
      @JsonKey(name: "silver") final int? silver,
      @JsonKey(name: "gold") final int? gold}) = _$BadgeCountDataImpl;

  factory _BadgeCountData.fromJson(Map<String, dynamic> json) =
      _$BadgeCountDataImpl.fromJson;

  @override
  @JsonKey(name: "bronze")
  int? get bronze;
  @override
  @JsonKey(name: "silver")
  int? get silver;
  @override
  @JsonKey(name: "gold")
  int? get gold;
  @override
  @JsonKey(ignore: true)
  _$$BadgeCountDataImplCopyWith<_$BadgeCountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
