part of 'response_bloc.dart';

final class ResponseState extends Equatable {
  final List<ResponseModel> data;
  final int count;

  const ResponseState({required this.data, required this.count});

  ResponseState copyWith({List<ResponseModel>? data, int? count}) =>
      ResponseState(data: data ?? this.data, count: count ?? this.count);

  @override
  List<Object> get props => [data, count];
}
