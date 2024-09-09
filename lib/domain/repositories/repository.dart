import 'package:display_tracking/domain/enities/reputation.dart';
import 'package:display_tracking/domain/enities/users_response.dart';

abstract class Repository {
  // Future<List<Store>> getListAuditList();

  // Future<List<DetailAudit>> getListDetailAudit({required String id});

  // Future<ResultProgressingYovlo> getResultYovloUpload({required dynamic data});

  // Future<AuditHistory> getAuditHisrory({required String id});

  // Future<void> deletedAuditDetail({required String id});

  // Future<List<StoreCode>> getAllStoreCode();

  // Future<List<StoreManage>> getListStoreManage({required int page, required int limit});

  //   //authentication
  // Future<TokenAccess> login({required dynamic data});

  Future<UsersResponse> getUsersReponse({
    required int page,
    required int limit,
  });
  Future<Reputation> getUserReputation({
    required int page,
    required int limit,
    required int idUser,
  });
}
