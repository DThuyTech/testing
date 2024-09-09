import 'package:bloc/bloc.dart';
import 'package:display_tracking/domain/enities/reputation.dart';
import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:display_tracking/domain/repositories/repository.dart';
import 'package:display_tracking/presentation/base/base_bloc/base_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:display_tracking/domain/enities/reputation_item.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@Injectable()
class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._repository) : super(const ProfileState()) {
    on<ProfileInitiated>(
      _onProfileInitiated,
    );
    on<LoadMoreReputation>(
      _onLoadMoreReputation,
    );
  }
  final Repository _repository;

  Future<void> _onLoadMoreReputation(
    LoadMoreReputation event,
    Emitter<ProfileState> emit,
  ) async {
    int pageNumber = state.pageCurrent + 1;
    int limit = state.pageLimit;
    List<ReputationItem> items = [];
    items.addAll(state.reputationItems);
    Reputation response = await _repository.getUserReputation(
      page: pageNumber,
      limit: limit,
      idUser: state.user.userId,
    );
    items.addAll(response.items);
    emit(state.copyWith(
      reputationItems: items,
      pageCurrent: pageNumber,
      pageLimit: limit,
      user: state.user,
    ));
  }

  Future<void> _onProfileInitiated(
    ProfileInitiated event,
    Emitter<ProfileState> emit,
  ) async {
    await runBlocCatching(action: () async {
      int pageCurrent = 1;
      int pageLimit = 30;
      List<ReputationItem> items = [];

      Reputation response = await _repository.getUserReputation(
        page: pageCurrent,
        limit: pageLimit,
        idUser: event.user.userId,
      );
      items.addAll(response.items);
      emit(state.copyWith(
        reputationItems: items,
        pageCurrent: pageCurrent,
        pageLimit: pageLimit,
        user: event.user,
      ));
    });
  }
}
