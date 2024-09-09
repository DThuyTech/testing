// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersResponseData _$UsersResponseDataFromJson(Map<String, dynamic> json) {
  return _UsersResponseData.fromJson(json);
}

/// @nodoc
mixin _$UsersResponseData {
  @JsonKey(name: "items")
  List<UserItemData>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "has_more")
  bool? get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: "quota_max")
  int? get quotaMax => throw _privateConstructorUsedError;
  @JsonKey(name: "quota_remaining")
  int? get quotaRemaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResponseDataCopyWith<UsersResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseDataCopyWith<$Res> {
  factory $UsersResponseDataCopyWith(
          UsersResponseData value, $Res Function(UsersResponseData) then) =
      _$UsersResponseDataCopyWithImpl<$Res, UsersResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<UserItemData>? items,
      @JsonKey(name: "has_more") bool? hasMore,
      @JsonKey(name: "quota_max") int? quotaMax,
      @JsonKey(name: "quota_remaining") int? quotaRemaining});
}

/// @nodoc
class _$UsersResponseDataCopyWithImpl<$Res, $Val extends UsersResponseData>
    implements $UsersResponseDataCopyWith<$Res> {
  _$UsersResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? hasMore = freezed,
    Object? quotaMax = freezed,
    Object? quotaRemaining = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemData>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotaMax: freezed == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int?,
      quotaRemaining: freezed == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersResponseDataImplCopyWith<$Res>
    implements $UsersResponseDataCopyWith<$Res> {
  factory _$$UsersResponseDataImplCopyWith(_$UsersResponseDataImpl value,
          $Res Function(_$UsersResponseDataImpl) then) =
      __$$UsersResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<UserItemData>? items,
      @JsonKey(name: "has_more") bool? hasMore,
      @JsonKey(name: "quota_max") int? quotaMax,
      @JsonKey(name: "quota_remaining") int? quotaRemaining});
}

/// @nodoc
class __$$UsersResponseDataImplCopyWithImpl<$Res>
    extends _$UsersResponseDataCopyWithImpl<$Res, _$UsersResponseDataImpl>
    implements _$$UsersResponseDataImplCopyWith<$Res> {
  __$$UsersResponseDataImplCopyWithImpl(_$UsersResponseDataImpl _value,
      $Res Function(_$UsersResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? hasMore = freezed,
    Object? quotaMax = freezed,
    Object? quotaRemaining = freezed,
  }) {
    return _then(_$UsersResponseDataImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemData>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      quotaMax: freezed == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int?,
      quotaRemaining: freezed == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersResponseDataImpl implements _UsersResponseData {
  const _$UsersResponseDataImpl(
      {@JsonKey(name: "items") final List<UserItemData>? items,
      @JsonKey(name: "has_more") this.hasMore,
      @JsonKey(name: "quota_max") this.quotaMax,
      @JsonKey(name: "quota_remaining") this.quotaRemaining})
      : _items = items;

  factory _$UsersResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersResponseDataImplFromJson(json);

  final List<UserItemData>? _items;
  @override
  @JsonKey(name: "items")
  List<UserItemData>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "has_more")
  final bool? hasMore;
  @override
  @JsonKey(name: "quota_max")
  final int? quotaMax;
  @override
  @JsonKey(name: "quota_remaining")
  final int? quotaRemaining;

  @override
  String toString() {
    return 'UsersResponseData(items: $items, hasMore: $hasMore, quotaMax: $quotaMax, quotaRemaining: $quotaRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersResponseDataImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.quotaMax, quotaMax) ||
                other.quotaMax == quotaMax) &&
            (identical(other.quotaRemaining, quotaRemaining) ||
                other.quotaRemaining == quotaRemaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      hasMore,
      quotaMax,
      quotaRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersResponseDataImplCopyWith<_$UsersResponseDataImpl> get copyWith =>
      __$$UsersResponseDataImplCopyWithImpl<_$UsersResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UsersResponseData implements UsersResponseData {
  const factory _UsersResponseData(
          {@JsonKey(name: "items") final List<UserItemData>? items,
          @JsonKey(name: "has_more") final bool? hasMore,
          @JsonKey(name: "quota_max") final int? quotaMax,
          @JsonKey(name: "quota_remaining") final int? quotaRemaining}) =
      _$UsersResponseDataImpl;

  factory _UsersResponseData.fromJson(Map<String, dynamic> json) =
      _$UsersResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "items")
  List<UserItemData>? get items;
  @override
  @JsonKey(name: "has_more")
  bool? get hasMore;
  @override
  @JsonKey(name: "quota_max")
  int? get quotaMax;
  @override
  @JsonKey(name: "quota_remaining")
  int? get quotaRemaining;
  @override
  @JsonKey(ignore: true)
  _$$UsersResponseDataImplCopyWith<_$UsersResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
