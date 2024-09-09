import 'package:display_tracking/data/api/mapper/base/base_data_mapper.dart';
import 'package:display_tracking/data/api/mapper/user_item_data_mapper.dart';
import 'package:display_tracking/data/api/models/users_response_data.dart';
import 'package:display_tracking/domain/enities/users_response.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UsersResponseDataMapper
    extends BaseDataMapper<UsersResponseData, UsersResponse> {
  const UsersResponseDataMapper(this._userItemDataMapper);

  final UserItemDataMapper _userItemDataMapper;
  @override
  UsersResponse mapToEntity(UsersResponseData? data) {
    return UsersResponse(
      hasMore: data?.hasMore ?? false,
      items: _userItemDataMapper.mapToListEntity(data?.items),
      quotaMax: data?.quotaMax ?? 0,
      quotaRemaining: data?.quotaRemaining ?? 0,
    );
  }
}
