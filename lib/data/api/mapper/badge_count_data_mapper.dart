import 'package:display_tracking/data/api/mapper/base/base_data_mapper.dart';
import 'package:display_tracking/data/api/models/badge_count_data.dart';
import 'package:display_tracking/domain/enities/badge_count.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class BadgeCountDataMapper extends BaseDataMapper<BadgeCountData, BadgeCount> {
  const BadgeCountDataMapper();
  @override
  BadgeCount mapToEntity(BadgeCountData? data) {
    return BadgeCount(
      bronze: data?.bronze ?? 0,
      gold: data?.gold ?? 0,
      silver: data?.silver ?? 0,
    );
  }
}
