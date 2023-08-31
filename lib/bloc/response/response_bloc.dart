import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../api/response_api.dart';
import '../../base/base_bloc.dart';
import '../../base/base_bloc_event.dart';
import '../../base/base_bloc_state.dart';
import '../../model/count/count_model.dart';
import '../../model/response/response_model.dart';
import '../../view/page_two/page_two.dart';

part 'response_bloc.freezed.dart';
part 'response_event.dart';
part 'response_state.dart';

@injectable
class ResponseBloc extends BaseBloc<ResponseEvent, ResponseState> {
  ResponseBloc() : super(const ResponseState()) {
    on<CallResponse>(_onCallResponse);

    on<ClickScreen>(_onClickScreen);
  }

  Future<void> _onCallResponse(
      CallResponse event, Emitter<ResponseState> emit) async {
    final response = await responseApi();
    if (response!.ok) {
      emit(state.copyWith(data: response.data!));
    }
  }

  void _onClickScreen(ClickScreen event, Emitter<ResponseState> emit) {
    const CountModel countParams = CountModel(count: 1);

    navigator.pushNamed(PageTwo.route, extra: countParams);
  }
}
