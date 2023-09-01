part of 'common_bloc.dart';

@freezed
class CommonState extends BaseBlocState with _$CommonState {
  const factory CommonState({@Default(false) bool isLoading}) = _CommonState;
}
