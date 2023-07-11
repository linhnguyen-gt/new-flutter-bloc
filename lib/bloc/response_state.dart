part of 'response_bloc.dart';

abstract class ResponseState extends Equatable {
  const ResponseState();
}

class ResponseInitial extends ResponseState {
  @override
  List<Object> get props => [];
}
