// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileInitiated {
  UserItem get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInitiatedCopyWith<ProfileInitiated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInitiatedCopyWith<$Res> {
  factory $ProfileInitiatedCopyWith(
          ProfileInitiated value, $Res Function(ProfileInitiated) then) =
      _$ProfileInitiatedCopyWithImpl<$Res, ProfileInitiated>;
  @useResult
  $Res call({UserItem user});

  $UserItemCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileInitiatedCopyWithImpl<$Res, $Val extends ProfileInitiated>
    implements $ProfileInitiatedCopyWith<$Res> {
  _$ProfileInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserItemCopyWith<$Res> get user {
    return $UserItemCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileInitiatedImplCopyWith<$Res>
    implements $ProfileInitiatedCopyWith<$Res> {
  factory _$$ProfileInitiatedImplCopyWith(_$ProfileInitiatedImpl value,
          $Res Function(_$ProfileInitiatedImpl) then) =
      __$$ProfileInitiatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserItem user});

  @override
  $UserItemCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileInitiatedImplCopyWithImpl<$Res>
    extends _$ProfileInitiatedCopyWithImpl<$Res, _$ProfileInitiatedImpl>
    implements _$$ProfileInitiatedImplCopyWith<$Res> {
  __$$ProfileInitiatedImplCopyWithImpl(_$ProfileInitiatedImpl _value,
      $Res Function(_$ProfileInitiatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileInitiatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem,
    ));
  }
}

/// @nodoc

class _$ProfileInitiatedImpl implements _ProfileInitiated {
  const _$ProfileInitiatedImpl({required this.user});

  @override
  final UserItem user;

  @override
  String toString() {
    return 'ProfileInitiated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitiatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInitiatedImplCopyWith<_$ProfileInitiatedImpl> get copyWith =>
      __$$ProfileInitiatedImplCopyWithImpl<_$ProfileInitiatedImpl>(
          this, _$identity);
}

abstract class _ProfileInitiated implements ProfileInitiated {
  const factory _ProfileInitiated({required final UserItem user}) =
      _$ProfileInitiatedImpl;

  @override
  UserItem get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileInitiatedImplCopyWith<_$ProfileInitiatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadMoreReputation {}

/// @nodoc
abstract class $LoadMoreReputationCopyWith<$Res> {
  factory $LoadMoreReputationCopyWith(
          LoadMoreReputation value, $Res Function(LoadMoreReputation) then) =
      _$LoadMoreReputationCopyWithImpl<$Res, LoadMoreReputation>;
}

/// @nodoc
class _$LoadMoreReputationCopyWithImpl<$Res, $Val extends LoadMoreReputation>
    implements $LoadMoreReputationCopyWith<$Res> {
  _$LoadMoreReputationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMoreReputationImplCopyWith<$Res> {
  factory _$$LoadMoreReputationImplCopyWith(_$LoadMoreReputationImpl value,
          $Res Function(_$LoadMoreReputationImpl) then) =
      __$$LoadMoreReputationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreReputationImplCopyWithImpl<$Res>
    extends _$LoadMoreReputationCopyWithImpl<$Res, _$LoadMoreReputationImpl>
    implements _$$LoadMoreReputationImplCopyWith<$Res> {
  __$$LoadMoreReputationImplCopyWithImpl(_$LoadMoreReputationImpl _value,
      $Res Function(_$LoadMoreReputationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreReputationImpl implements _LoadMoreReputation {
  const _$LoadMoreReputationImpl();

  @override
  String toString() {
    return 'LoadMoreReputation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreReputationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadMoreReputation implements LoadMoreReputation {
  const factory _LoadMoreReputation() = _$LoadMoreReputationImpl;
}

/// @nodoc
mixin _$ProfileState {
  int get pageCurrent => throw _privateConstructorUsedError;
  int get pageLimit => throw _privateConstructorUsedError;
  List<ReputationItem> get reputationItems =>
      throw _privateConstructorUsedError;
  UserItem get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {int pageCurrent,
      int pageLimit,
      List<ReputationItem> reputationItems,
      UserItem user});

  $UserItemCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCurrent = null,
    Object? pageLimit = null,
    Object? reputationItems = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      pageCurrent: null == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      pageLimit: null == pageLimit
          ? _value.pageLimit
          : pageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      reputationItems: null == reputationItems
          ? _value.reputationItems
          : reputationItems // ignore: cast_nullable_to_non_nullable
              as List<ReputationItem>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserItemCopyWith<$Res> get user {
    return $UserItemCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageCurrent,
      int pageLimit,
      List<ReputationItem> reputationItems,
      UserItem user});

  @override
  $UserItemCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCurrent = null,
    Object? pageLimit = null,
    Object? reputationItems = null,
    Object? user = null,
  }) {
    return _then(_$ProfileStateImpl(
      pageCurrent: null == pageCurrent
          ? _value.pageCurrent
          : pageCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      pageLimit: null == pageLimit
          ? _value.pageLimit
          : pageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      reputationItems: null == reputationItems
          ? _value._reputationItems
          : reputationItems // ignore: cast_nullable_to_non_nullable
              as List<ReputationItem>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.pageCurrent = 0,
      this.pageLimit = 0,
      final List<ReputationItem> reputationItems = const [],
      this.user = const UserItem()})
      : _reputationItems = reputationItems;

  @override
  @JsonKey()
  final int pageCurrent;
  @override
  @JsonKey()
  final int pageLimit;
  final List<ReputationItem> _reputationItems;
  @override
  @JsonKey()
  List<ReputationItem> get reputationItems {
    if (_reputationItems is EqualUnmodifiableListView) return _reputationItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reputationItems);
  }

  @override
  @JsonKey()
  final UserItem user;

  @override
  String toString() {
    return 'ProfileState(pageCurrent: $pageCurrent, pageLimit: $pageLimit, reputationItems: $reputationItems, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.pageCurrent, pageCurrent) ||
                other.pageCurrent == pageCurrent) &&
            (identical(other.pageLimit, pageLimit) ||
                other.pageLimit == pageLimit) &&
            const DeepCollectionEquality()
                .equals(other._reputationItems, _reputationItems) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCurrent, pageLimit,
      const DeepCollectionEquality().hash(_reputationItems), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final int pageCurrent,
      final int pageLimit,
      final List<ReputationItem> reputationItems,
      final UserItem user}) = _$ProfileStateImpl;

  @override
  int get pageCurrent;
  @override
  int get pageLimit;
  @override
  List<ReputationItem> get reputationItems;
  @override
  UserItem get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
