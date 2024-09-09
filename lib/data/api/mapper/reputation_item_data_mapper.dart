import 'package:display_tracking/data/api/mapper/base/base_data_mapper.dart';
import 'package:display_tracking/data/api/models/reputation_item_data.dart';
import 'package:display_tracking/domain/enities/reputation_item.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ReputationItemDataMapper
    extends BaseDataMapper<ReputationItemData, ReputationItem> {
  const ReputationItemDataMapper();
  @override
  ReputationItem mapToEntity(ReputationItemData? data) {
    return ReputationItem(
      creationDate: data?.creationDate ?? 0,
      postId: data?.postId ?? 0,
      reputationChange: data?.reputationChange ?? 0,
      reputationHistoryType: data?.reputationHistoryType ?? '',
      userId: data?.userId ?? 0,
    );
  }
}
