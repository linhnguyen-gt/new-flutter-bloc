import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_bloc/api/response_api.dart';
import 'package:new_flutter_bloc/http_services/base_response.dart';
import 'package:new_flutter_bloc/model/response_model.dart';

part 'response_event.dart';
part 'response_state.dart';

class ResponseBloc extends Bloc<ResponseEvent, ResponseState> {
  ResponseBloc() : super(ResponseInitial()) {
    on<ResponseEvent>((event, emit) async {
      // TODO: implement event handler

      BaseResponse<List<ResponseModel>>? ress = await responseApi();

      ress?.data;
    });
  }
}
