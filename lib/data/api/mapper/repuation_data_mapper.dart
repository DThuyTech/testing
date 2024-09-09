import 'package:display_tracking/data/api/mapper/base/base_data_mapper.dart';
import 'package:display_tracking/data/api/mapper/reputation_item_data_mapper.dart';
import 'package:display_tracking/data/api/models/reputation_data.dart';
import 'package:display_tracking/domain/enities/reputation.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ReputationDataMapper extends BaseDataMapper<ReputationData, Reputation> {
  const ReputationDataMapper(this._reputationItemDataMapper);
  final ReputationItemDataMapper _reputationItemDataMapper;
  @override
  Reputation mapToEntity(ReputationData? data) {
    return Reputation(
      hasMore: data?.hasMore ?? false,
      items: _reputationItemDataMapper.mapToListEntity(data?.items),
      quotaMax: data?.quotaMax ?? 0,
      quotaRemaining: data?.quotaRemaining ?? 0,
    );
  }
}
