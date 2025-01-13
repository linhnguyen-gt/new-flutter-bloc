import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/base_bloc_event.dart';
import '../../../base/bloc/base_bloc_state.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

@injectable
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState()) {
    on<SetLoading>(_onLoading);
  }

  FutureOr<void> _onLoading(SetLoading event, Emitter<CommonState> emitter) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state.copyWith(isLoading: event.isLoading));
  }
}
