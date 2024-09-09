part of 'list_sof_bloc.dart';


sealed class ListSofEvent extends BaseBlocEvent{} 

@freezed 
class ListSofInitiated extends ListSofEvent with _$ListSofInitiated{
  const factory ListSofInitiated({
    required int page,
    required int limit,
  })= _ListSofInitiated;
}

@freezed
class UserItemBookmarked extends ListSofEvent with _$UserItemBookmarked{
  const factory UserItemBookmarked({
    required int idUserItem,
  })= _UserItemBookmarked;
}

@freezed
class LoadMoreItem extends ListSofEvent with _$LoadMoreItem{
  const factory LoadMoreItem() = _LoadMoreItem;
}

@freezed 
class FilterBookmarked extends ListSofEvent with _$FilterBookmarked{
  const factory FilterBookmarked() = _FilterBookmarked;
}

@freezed 
class UserItemCardPressed extends ListSofEvent with _$UserItemCardPressed{
  const factory UserItemCardPressed({
    required UserItem user,
  }) = _UserItemCardPressed;
}