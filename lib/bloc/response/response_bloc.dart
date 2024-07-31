import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../api/response_api.dart';
import '../../base/bloc/base_bloc.dart';
import '../../base/bloc/base_bloc_event.dart';
import '../../base/bloc/base_bloc_state.dart';
import '../../model/count/count_model.dart';
import '../../model/response/response_model.dart';
import '../../navigation/app_router.gr.dart';

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
    await blocCatch(actions: () async {
      // example of calling api with parameters and response using isolate
      final response = await compute(
          responseApi,
          const ResponseParamModel(
              drilldowns: 'State', measures: 'Population', year: 'latest'));

      if (response.ok) {
        emit(state.copyWith(data: response.data!));
      }
    });
  }

  void _onClickScreen(ClickScreen event, Emitter<ResponseState> emit) {
    navigator
        .push(RouteTwo(countPageOne: CountModel(count: state.data.length)));
  }
}
