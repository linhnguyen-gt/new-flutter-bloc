part of 'response_bloc.dart';

abstract class ResponseEvent extends Equatable {
  const ResponseEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class CallResponse extends ResponseEvent {}

class Count extends ResponseEvent {}
