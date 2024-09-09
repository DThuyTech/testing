part of 'profile_bloc.dart';

sealed class ProfileEvent extends BaseBlocEvent{} 

@freezed
class ProfileInitiated extends ProfileEvent with _$ProfileInitiated{
  const factory ProfileInitiated({
    required UserItem user,
  })= _ProfileInitiated;
}

@freezed 
class LoadMoreReputation extends ProfileEvent with _$LoadMoreReputation {
  const factory LoadMoreReputation() = _LoadMoreReputation;
}