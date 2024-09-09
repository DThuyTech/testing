// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) {
  return _UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersResponse {
  List<UserItem> get items => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get quotaMax => throw _privateConstructorUsedError;
  int get quotaRemaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResponseCopyWith<UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseCopyWith<$Res> {
  factory $UsersResponseCopyWith(
          UsersResponse value, $Res Function(UsersResponse) then) =
      _$UsersResponseCopyWithImpl<$Res, UsersResponse>;
  @useResult
  $Res call(
      {List<UserItem> items, bool hasMore, int quotaMax, int quotaRemaining});
}

/// @nodoc
class _$UsersResponseCopyWithImpl<$Res, $Val extends UsersResponse>
    implements $UsersResponseCopyWith<$Res> {
  _$UsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
    Object? quotaMax = null,
    Object? quotaRemaining = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      quotaMax: null == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int,
      quotaRemaining: null == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersResponseImplCopyWith<$Res>
    implements $UsersResponseCopyWith<$Res> {
  factory _$$UsersResponseImplCopyWith(
          _$UsersResponseImpl value, $Res Function(_$UsersResponseImpl) then) =
      __$$UsersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserItem> items, bool hasMore, int quotaMax, int quotaRemaining});
}

/// @nodoc
class __$$UsersResponseImplCopyWithImpl<$Res>
    extends _$UsersResponseCopyWithImpl<$Res, _$UsersResponseImpl>
    implements _$$UsersResponseImplCopyWith<$Res> {
  __$$UsersResponseImplCopyWithImpl(
      _$UsersResponseImpl _value, $Res Function(_$UsersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasMore = null,
    Object? quotaMax = null,
    Object? quotaRemaining = null,
  }) {
    return _then(_$UsersResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      quotaMax: null == quotaMax
          ? _value.quotaMax
          : quotaMax // ignore: cast_nullable_to_non_nullable
              as int,
      quotaRemaining: null == quotaRemaining
          ? _value.quotaRemaining
          : quotaRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersResponseImpl implements _UsersResponse {
  const _$UsersResponseImpl(
      {final List<UserItem> items = const [],
      this.hasMore = false,
      this.quotaMax = 0,
      this.quotaRemaining = 0})
      : _items = items;

  factory _$UsersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersResponseImplFromJson(json);

  final List<UserItem> _items;
  @override
  @JsonKey()
  List<UserItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int quotaMax;
  @override
  @JsonKey()
  final int quotaRemaining;

  @override
  String toString() {
    return 'UsersResponse(items: $items, hasMore: $hasMore, quotaMax: $quotaMax, quotaRemaining: $quotaRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersResponseImpl &&
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
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      __$$UsersResponseImplCopyWithImpl<_$UsersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersResponseImplToJson(
      this,
    );
  }
}

abstract class _UsersResponse implements UsersResponse {
  const factory _UsersResponse(
      {final List<UserItem> items,
      final bool hasMore,
      final int quotaMax,
      final int quotaRemaining}) = _$UsersResponseImpl;

  factory _UsersResponse.fromJson(Map<String, dynamic> json) =
      _$UsersResponseImpl.fromJson;

  @override
  List<UserItem> get items;
  @override
  bool get hasMore;
  @override
  int get quotaMax;
  @override
  int get quotaRemaining;
  @override
  @JsonKey(ignore: true)
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
