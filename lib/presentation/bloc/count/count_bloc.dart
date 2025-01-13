import 'package:bloc_small/bloc_small.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'count_bloc.freezed.dart';
part 'count_event.dart';
part 'count_state.dart';

@injectable
class CountBloc extends MainBloc<CountEvent, CountState> {
  CountBloc() : super(const CountState()) {
    on<Count>(_onCount);
  }

  void _onCount(Count event, Emitter<CountState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }
}
