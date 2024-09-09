
import 'package:display_tracking/data/api/client/base/api_client.dart';
import 'package:display_tracking/data/api/client/server_api_client.dart';
import 'package:display_tracking/data/api/mapper/base/base_success_response_mapper.dart';
import 'package:display_tracking/data/api/models/reputation_data.dart';
import 'package:display_tracking/data/api/models/users_response_data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AppApiService {
  const AppApiService(this._serverApiClient);

  final ServerApiClient _serverApiClient;

  //get audit list from server
  // Future<List<StoreData>?> getListAuditList() async {
  //   return await _serverApiClient.request(
  //     method: RequestMethod.get,
  //     path: "audits/audit-list?skip=0&limit=500",
  //     decoder: (data) => StoreData.fromJson(data as Map<String, dynamic>),
  //     successResponseMapperType: SuccessResponseMapperType.jsonArray,
  //   );
  // }

  Future<UsersResponseData?> getUsersReponse({
    required int page,
    required int limit,
  }) async {
    return await _serverApiClient.request(
      method: RequestMethod.get,
      isData: false,
      path: 'users?page=$page&pagesize=$limit&site=stackoverflow',
      decoder: (data) =>
          UsersResponseData.fromJson(data as Map<String, dynamic>),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }

  Future<ReputationData?> getUserReputation({
    required int page,
    required int limit,
    required int idUser,
  }) async {
    return await _serverApiClient.request(
      method: RequestMethod.get,
      isData: false,
      path: 'users/$idUser/reputation-history?page=$page&pagesize=$limit&site=stackoverflow',
      decoder: (data) => ReputationData.fromJson(data as Map<String, dynamic>),
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }
}
