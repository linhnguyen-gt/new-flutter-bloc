import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../base/base_bloc.dart';
import '../../base/base_bloc_event.dart';
import '../../base/base_bloc_state.dart';

part 'count_bloc.freezed.dart';
part 'count_event.dart';
part 'count_state.dart';

@injectable
class CountBloc extends BaseBloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    on<Count>(_onCount);
  }

  void _onCount(Count event, Emitter<CountState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }
}
