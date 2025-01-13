part of 'count_bloc.dart';

@freezed
class CountState extends MainBlocState with _$CountState {
  const factory CountState({
    @Default(0) int count,
  }) = _CountState;
}
