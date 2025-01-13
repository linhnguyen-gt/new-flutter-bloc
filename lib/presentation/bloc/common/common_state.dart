part of 'common_bloc.dart';

@freezed
class CommonState extends MainBlocState with _$CommonState {
  const factory CommonState({@Default(false) bool isLoading}) = _CommonState;
}
