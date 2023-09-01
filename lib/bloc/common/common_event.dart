part of 'common_bloc.dart';

abstract class CommonEvent extends BaseBlocEvent {
  const CommonEvent();
}

@freezed
class SetLoading extends CommonEvent with _$SetLoading {
  const factory SetLoading({required bool isLoading}) = _SetLoading;
}
