import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_bloc/api/response_api.dart';
import 'package:new_flutter_bloc/http_services/base_response.dart';
import 'package:new_flutter_bloc/model/response_model.dart';

part 'response_event.dart';
part 'response_state.dart';

class ResponseBloc extends Bloc<ResponseEvent, ResponseState> {
  ResponseBloc() : super(const ResponseState(data: [], count: 0)) {
    on<CallResponse>((event, emit) async {
      // TODO: implement event handler
      BaseResponse<List<ResponseModel>>? response = await responseApi();
      if (response!.ok) {
        emit(state.copyWith(data: response.data!));
      }
    });

    on<Count>((event, emit) => emit(state.copyWith(count: state.count + 1)));
  }
}
