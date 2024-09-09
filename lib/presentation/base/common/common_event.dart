part of 'common_bloc.dart';


 class CommonEvent extends BaseBlocEvent {
  const CommonEvent();
 }

@freezed
 class LoadingVisibilityEmitted extends CommonEvent with _$LoadingVisibilityEmitted {
  const factory LoadingVisibilityEmitted({
    required bool isLoading,
  }) = _LoadingVisibilityEmitted;
 }

@freezed 
class ExceptionEmitted extends CommonEvent with _$ExceptionEmitted{
  const factory ExceptionEmitted({
    required AppExceptionWrapper appExceptionWrapper,
  })= _ExceptionEmitted;
}