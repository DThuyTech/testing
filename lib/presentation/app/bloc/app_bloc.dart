import 'package:display_tracking/presentation/base/base_bloc/base_bloc.dart';
import 'package:injectable/injectable.dart';


part 'app_event.dart';
part 'app_state.dart';

@LazySingleton()
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitiated>((event, emit) {});
  }
}
