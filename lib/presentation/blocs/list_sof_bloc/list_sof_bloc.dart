import 'package:bloc/bloc.dart';
import 'package:display_tracking/di/di.dart';
import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:display_tracking/domain/enities/users_response.dart';
import 'package:display_tracking/domain/repositories/repository.dart';
import 'package:display_tracking/presentation/base/base_bloc/base_bloc.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_sof_event.dart';
part 'list_sof_state.dart';
part 'list_sof_bloc.freezed.dart';

@Injectable()
class ListSofBloc extends BaseBloc<ListSofEvent, ListSofState> {
  ListSofBloc(this._repository) : super(const ListSofState()) {
    on<ListSofInitiated>(
      _onListSofInitiated,
    );
    on<UserItemBookmarked>(
      _onUserItemBookmarked,
    );
    on<LoadMoreItem>(
      _onLoadMoreItem,
    );
    on<FilterBookmarked>(
      _onFilterBookmarked,
    );
    on<UserItemCardPressed>(
      _onUserItemCardPressed,
    );
  }

  final Repository _repository;
  void _onUserItemCardPressed(
    UserItemCardPressed event,
    Emitter<ListSofState> emit,
  ) {
    getIt<AppRouter>().push(ProfileRoute(user: event.user));
  }

  Future<void> _onFilterBookmarked(
    FilterBookmarked event,
    Emitter<ListSofState> emit,
  ) async {
    await runBlocCatching(action: () async {
      List<UserItem> userItemsFilter = await compute(_filterItems, {
        'isFilter': !state.isFilter,
        'userItems': state.userItems,
        'userBookmarkeds': state.userBookmarkeds,
      });
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
        isFilter: !state.isFilter,
        userItemsFilter: userItemsFilter,
      ));
    });
  }

  Future<void> _onLoadMoreItem(
    LoadMoreItem event,
    Emitter<ListSofState> emit,
  ) async {
    final result = state.userItemsPreLoading;
    int pageNumber = state.pageNumber + 1;
    List<UserItem> userItems = [];

    userItems.addAll(state.userItems);
    userItems.addAll(result);
    List<UserItem> userItemsFilter = [];
    if (state.isFilter) {
      userItemsFilter = await compute(_filterItems, {
        'isFilter': state.isFilter,
        'userItems': userItems,
        'userBookmarkeds': state.userBookmarkeds,
      });
    } else {
      userItemsFilter.addAll(userItems);
    }

    emit(
      state.copyWith(
        userItems: userItems,
        pageNumber: pageNumber,
        userItemsFilter: userItemsFilter,
        userItemsPreLoading: [],
      ),
    );
    await preloadingUserItem(emit, pageNumber);
  }

  Future<void> _onUserItemBookmarked(
    UserItemBookmarked event,
    Emitter<ListSofState> emit,
  ) async {
    await runBlocCatching(action: () async {
      Map<int, bool> userBookmarked = {};
      userBookmarked.addAll(state.userBookmarked);
      List<int> listBookmarked = [];
      listBookmarked.addAll(state.userBookmarkeds);
      List<UserItem> userFiltered = [];
      userFiltered.addAll(state.userItemsFilter);

      if (userBookmarked[event.idUserItem] != null) {
        userBookmarked.remove(event.idUserItem);
        listBookmarked.remove(event.idUserItem);
        userFiltered.remove(
            userFiltered.firstWhere((p) => p.userId == event.idUserItem));
      } else {
        userBookmarked[event.idUserItem] = true;
        listBookmarked.add(event.idUserItem);
        userFiltered.add(
            state.userItems.firstWhere((p) => p.userId == event.idUserItem));
      }
      saveIntList(listBookmarked);
      emit(
        state.copyWith(
          userBookmarked: userBookmarked,
          userBookmarkeds: listBookmarked,
          userItemsFilter: userFiltered,
        ),
      );
    });
  }

  Future<void> _onListSofInitiated(
    ListSofInitiated event,
    Emitter<ListSofState> emit,
  ) async {
    await runBlocCatching(action: () async {
      List<int> listBookmarked = await getIntList();
      Map<int, bool> mapBookmarked = {};
      int pageNumber = 0;
      if (listBookmarked.isNotEmpty) {
        for (int item in listBookmarked) {
          mapBookmarked[item] = true;
        }
      }
      var response = await _repository.getUsersReponse(
        limit: event.limit,
        page: event.page,
      );
      await preloadingUserItem(emit, pageNumber);

      emit(
        state.copyWith(
          userResponse: response,
          userBookmarkeds: listBookmarked,
          userBookmarked: mapBookmarked,
          userItemsFilter: filterItems(
            state.isFilter,
            response.items,
            state.userBookmarkeds,
          ),
          userItems: response.items,
          pageNumber: pageNumber,
        ),
      );
    });
  }

  Future<void> preloadingUserItem(
    Emitter<ListSofState> emit,
    int pageCurrent,
  ) async {
    List<UserItem> userItemsPreloading = [];
    var response = await _repository.getUsersReponse(
      limit: 30,
      page: pageCurrent + 1,
    );
    userItemsPreloading.addAll(response.items);
    emit(state.copyWith(userItemsPreLoading: userItemsPreloading));
  }

  Future<List<int>> getIntList() async {
    const storage = FlutterSecureStorage();
    String? intListString = await storage.read(key: 'idUserBookmarks');
    if (intListString != null) {
      return intListString.split(',').map(int.parse).toList();
    }
    return [];
  }

  Future<void> saveIntList(List<int> intList) async {
    const storage = FlutterSecureStorage();
    String intListString = intList.join(',');
    await storage.write(key: 'idUserBookmarks', value: intListString);
  }
}

List<UserItem> _filterItems(Map<String, dynamic> params) {
  final isFilter = params['isFilter'] as bool;
  final List<UserItem> userItems = params['userItems'];
  final List<int> userBookmarkedsJson = params['userBookmarkeds'];

  return filterItems(isFilter, userItems, userBookmarkedsJson);
}

List<UserItem> filterItems(
  bool isFilter,
  List<UserItem> items,
  List<int> idUserBookmarks,
) {
  List<UserItem> listFiltered = [];
  if (isFilter) {
    for (UserItem item in items) {
      if (idUserBookmarks.contains(item.userId)) {
        listFiltered.add(item);
      }
    }
  } else {
    listFiltered.addAll(items);
  }
  return listFiltered;
}
