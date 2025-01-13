part of 'common_bloc.dart';

abstract class CommonEvent extends MainBlocEvent {
  const CommonEvent();
}

@freezed
class SetLoading extends CommonEvent with _$SetLoading {
  const factory SetLoading({required bool isLoading}) = _SetLoading;
}
