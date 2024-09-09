import 'package:display_tracking/data/api/app_api_service.dart';
import 'package:display_tracking/data/api/mapper/repuation_data_mapper.dart';
import 'package:display_tracking/data/api/mapper/users_response_data_mapper.dart';
import 'package:display_tracking/domain/enities/reputation.dart';
import 'package:display_tracking/domain/enities/users_response.dart';

import 'package:display_tracking/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  const RepositoryImpl(
    this._appApiService,
    this._usersResponseDataMapper,
    this._reputationDataMapper,
  );
  final AppApiService _appApiService;
  final UsersResponseDataMapper _usersResponseDataMapper;
  final ReputationDataMapper _reputationDataMapper;

  @override
  Future<UsersResponse> getUsersReponse({
    required int page,
    required int limit,
  }) async {
    final response =
        await _appApiService.getUsersReponse(limit: limit, page: page);
    return _usersResponseDataMapper.mapToEntity(response);
  }
  // @override
  // Future<List<Store>> getListAuditList() async {
  //   final response = await _appApiService.getListAuditList();
  //   List<Store> stores = [];
  //   if (response!.isNotEmpty) {
  //     for (StoreData value in response) {
  //       stores.add(_storeDataMapper.mapToEntity(value));
  //     }
  //   }
  //   return stores;
  // }

  @override
  Future<Reputation> getUserReputation({
    required int page,
    required int limit,
    required int idUser,
  }) async {
    final response = await _appApiService.getUserReputation(
      limit: limit,
      page: page,
      idUser: idUser,
    );
    return _reputationDataMapper.mapToEntity(response);
  }
}
