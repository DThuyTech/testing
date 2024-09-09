import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:display_tracking/presentation/base/base_bloc/base_bloc.dart';
import 'package:display_tracking/shared/shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'common_event.dart';
part 'common_state.dart';
part 'common_bloc.freezed.dart';

@Injectable()
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  CommonBloc() : super((const CommonState())) {
    on<LoadingVisibilityEmitted>(
      _onLoadingVisibilityEmitted,
    );
   
  }



  FutureOr<void> _onLoadingVisibilityEmitted(
    LoadingVisibilityEmitted event,
    Emitter<CommonState> emit,
  ) {
    emit(
      CommonState(
        isLoading: state.loadingCount == 0 && event.isLoading
            ? true
            : state.loadingCount == 1 && !event.isLoading || state.loadingCount <= 0
                ? false
                : state.isLoading,
        loadingCount: event.isLoading ? state.loadingCount + 1 : state.loadingCount - 1,
      ),
    );
  }

  Future<void> _onExceptionEmited(
    ExceptionEmitted event,
    Emitter<CommonState> emit,
  ) async {
    emit(state.copyWith(appExceptionWrapper: event.appExceptionWrapper));
  }
}
