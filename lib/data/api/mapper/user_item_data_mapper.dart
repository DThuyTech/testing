import 'package:display_tracking/data/api/mapper/badge_count_data_mapper.dart';
import 'package:display_tracking/data/api/mapper/base/base_data_mapper.dart';
import 'package:display_tracking/data/api/models/user_item_data.dart';
import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserItemDataMapper extends BaseDataMapper<UserItemData, UserItem> {
  const UserItemDataMapper(this._badgeCountDataMapper);
  final BadgeCountDataMapper _badgeCountDataMapper;
  @override
  UserItem mapToEntity(UserItemData? data) {
    return UserItem(
      acceptRate: data?.acceptRate ?? 0,
      accountId: data?.accountId ?? 0,
      badgeCount: _badgeCountDataMapper.mapToEntity(data?.badgeCounts),
      creationDate: data?.creationDate ?? 0,
      displayName: data?.displayName ?? '',
      isEmployee: data?.isEmployee ?? false,
      lastAccessDate: data?.lastAccessDate ?? 0,
      lastModifiedDate: data?.lastModifiedDate ?? 0,
      link: data?.link ?? '',
      location: data?.location ?? '',
      profileImage: data?.profileImage ?? '',
      reputation: data?.reputation ?? 0,
      reputationChangeDay: data?.reputationChangeDay ?? 0,
      reputationChangeMonth: data?.reputationChangeMonth ?? 0,
      reputationChangeQuarter: data?.reputationChangeQuarter ?? 0,
      reputationChangeWeek: data?.reputationChangeWeek ?? 0,
      reputationChangeYear: data?.reputationChangeYear ?? 0,
      userId: data?.userId ?? 0,
      userType: data?.userType ?? '',
      websiteUrl: data?.websiteUrl ?? '',
    );
  }
}
