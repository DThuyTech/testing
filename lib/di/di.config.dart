// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:display_tracking/data/api/app_api_service.dart' as _i14;
import 'package:display_tracking/data/api/client/server_api_client.dart'
    as _i11;
import 'package:display_tracking/data/api/mapper/badge_count_data_mapper.dart'
    as _i5;
import 'package:display_tracking/data/api/mapper/repuation_data_mapper.dart'
    as _i15;
import 'package:display_tracking/data/api/mapper/reputation_item_data_mapper.dart'
    as _i10;
import 'package:display_tracking/data/api/mapper/user_item_data_mapper.dart'
    as _i12;
import 'package:display_tracking/data/api/mapper/users_response_data_mapper.dart'
    as _i13;
import 'package:display_tracking/data/api/middleware/connectivity_interceptor.dart'
    as _i7;
import 'package:display_tracking/data/api/middleware/header_interceptor.dart'
    as _i9;
import 'package:display_tracking/data/repositories/repository_impl.dart'
    as _i17;
import 'package:display_tracking/di/di.dart' as _i20;
import 'package:display_tracking/domain/repositories/repository.dart' as _i16;
import 'package:display_tracking/presentation/app/bloc/app_bloc.dart' as _i3;
import 'package:display_tracking/presentation/base/common/common_bloc.dart'
    as _i6;
import 'package:display_tracking/presentation/blocs/list_sof_bloc/list_sof_bloc.dart'
    as _i18;
import 'package:display_tracking/presentation/blocs/profile_bloc/profile_bloc.dart'
    as _i19;
import 'package:display_tracking/presentation/navigation/routes/app_router.dart'
    as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.BadgeCountDataMapper>(
        () => const _i5.BadgeCountDataMapper());
    gh.factory<_i6.CommonBloc>(() => _i6.CommonBloc());
    gh.factory<_i7.ConnectivityInterceptor>(
        () => _i7.ConnectivityInterceptor());
    gh.singleton<_i8.FlutterSecureStorage>(
        () => serviceModule.flutterSecureStorage);
    gh.factory<_i9.HeaderInterceptor>(() => _i9.HeaderInterceptor());
    gh.factory<_i10.ReputationItemDataMapper>(
        () => const _i10.ReputationItemDataMapper());
    gh.lazySingleton<_i11.ServerApiClient>(
        () => _i11.ServerApiClient(gh<_i9.HeaderInterceptor>()));
    gh.factory<_i12.UserItemDataMapper>(
        () => _i12.UserItemDataMapper(gh<_i5.BadgeCountDataMapper>()));
    gh.factory<_i13.UsersResponseDataMapper>(
        () => _i13.UsersResponseDataMapper(gh<_i12.UserItemDataMapper>()));
    gh.lazySingleton<_i14.AppApiService>(
        () => _i14.AppApiService(gh<_i11.ServerApiClient>()));
    gh.factory<_i15.ReputationDataMapper>(
        () => _i15.ReputationDataMapper(gh<_i10.ReputationItemDataMapper>()));
    gh.lazySingleton<_i16.Repository>(() => _i17.RepositoryImpl(
          gh<_i14.AppApiService>(),
          gh<_i13.UsersResponseDataMapper>(),
          gh<_i15.ReputationDataMapper>(),
        ));
    gh.factory<_i18.ListSofBloc>(() => _i18.ListSofBloc(gh<_i16.Repository>()));
    gh.factory<_i19.ProfileBloc>(() => _i19.ProfileBloc(gh<_i16.Repository>()));
    return this;
  }
}

class _$ServiceModule extends _i20.ServiceModule {}
