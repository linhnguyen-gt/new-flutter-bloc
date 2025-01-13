import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_small/bloc_small.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

@injectable
class CommonBloc extends MainBloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState()) {
    on<SetLoading>(_onLoading);
  }

  FutureOr<void> _onLoading(SetLoading event, Emitter<CommonState> emitter) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state.copyWith(isLoading: event.isLoading));
  }
}
