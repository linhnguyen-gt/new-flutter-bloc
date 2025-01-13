import 'package:injectable/injectable.dart';

import '../../../domain/entities/response/response_entity.dart';
import '../../../domain/repositories/response_repository.dart';
import '../../data_sources/response/response_remote_data_source.dart';
import '../../models/response/response_model.dart';

@Injectable(as: ResponseRepository)
class RepositoryImpl implements ResponseRepository {
  final ResponseRemoteDataSource remoteDataSource;

  RepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ResponseEntity>> getResponse(ResponseParamModel param) async {
    final result = await remoteDataSource.responseApi(param);
    if (!result.ok) {
      throw Exception('Failed to get response');
    }
    return result.data!.map((e) => e.toEntity()).toList();
  }
}
