import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/base_bloc_event.dart';
import '../../../base/bloc/base_bloc_state.dart';
import '../../../data/models/count/count_model.dart';
import '../../../data/models/response/response_model.dart';
import '../../../domain/entities/response/response_entity.dart';
import '../../../domain/use_cases/response/get_response.dart';
import '../../../navigation/app_router.gr.dart';

part 'response_bloc.freezed.dart';
part 'response_event.dart';
part 'response_state.dart';

@injectable
class ResponseBloc extends BaseBloc<ResponseEvent, ResponseState> {
  final GetResponse getResponse;

  ResponseBloc(this.getResponse) : super(const ResponseState()) {
    on<CallResponse>(_onCallResponse);
    on<ClickScreen>(_onClickScreen);
  }

  Future<void> _onCallResponse(
      CallResponse event, Emitter<ResponseState> emit) async {
    await blocCatch(actions: () async {
      // example of calling api with parameters and response using isolate
      final result = await compute(
          getResponse,
          const ResponseParamModel(
              drilldowns: 'State', measures: 'Population', year: 'latest'));

      emit(state.copyWith(data: result));
    });
  }

  void _onClickScreen(ClickScreen event, Emitter<ResponseState> emit) {
    navigator
        .push(RouteTwo(countPageOne: CountModel(count: state.data.length)));
  }
}
