part of 'profile_bloc.dart';

@freezed
class ProfileState extends BaseBlocState with _$ProfileState {
  const factory ProfileState({
    @Default(0) int pageCurrent,
    @Default(0) int pageLimit,
    @Default([]) List<ReputationItem> reputationItems,
    @Default(UserItem()) UserItem user,
  }) = _ProfileState;
}
