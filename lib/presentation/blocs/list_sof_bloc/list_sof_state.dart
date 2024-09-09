part of 'list_sof_bloc.dart';

@freezed
class ListSofState extends BaseBlocState with _$ListSofState {
  const factory ListSofState({
    @Default(0) int pageNumber,
    @Default(false) bool isFilter,
    @Default(UsersResponse()) UsersResponse userResponse,
    @Default([]) List<UserItem> userItems,
    @Default([]) List<UserItem> userItemsFilter,
    @Default([]) List<UserItem> userItemsPreLoading,
    @Default({}) Map<int, bool> userBookmarked,
    @Default([]) List<int> userBookmarkeds,
    @Default(0) int pageLimit,
  }) = _ListSofState;
}
