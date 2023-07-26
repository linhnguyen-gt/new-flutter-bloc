import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../api/response_api.dart';
import '../base/base_bloc.dart';
import '../base/base_bloc_event.dart';
import '../base/base_bloc_state.dart';
import '../model/response_model.dart';
import '../view/page_two/page_two.dart';

part 'response_bloc.freezed.dart';
part 'response_event.dart';
part 'response_state.dart';

@injectable
class ResponseBloc extends BaseBloc<ResponseEvent, ResponseState> {
  ResponseBloc() : super(const ResponseState()) {
    on<CallResponse>(_onCallResponse);

    on<Count>(_onCount);

    on<ClickScreen>(_onClickScreen);
  }

  Future<void> _onCallResponse(
      CallResponse event, Emitter<ResponseState> emit) async {
    final response = await responseApi();
    if (response!.ok) {
      emit(state.copyWith(data: response.data!));
    }
  }

  void _onCount(Count event, Emitter<ResponseState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  void _onClickScreen(ClickScreen event, Emitter<ResponseState> emit) {
    navigator.pushNamed(PageTwo.route);
  }
}
