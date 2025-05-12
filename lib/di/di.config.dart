// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:new_flutter_bloc/data/data_sources/auth/auth_remote_data_source.dart'
    as _i487;
import 'package:new_flutter_bloc/data/data_sources/response/response_remote_data_source.dart'
    as _i496;
import 'package:new_flutter_bloc/data/repositories/auth/auth_repository_impl.dart'
    as _i1007;
import 'package:new_flutter_bloc/data/repositories/response/response_repository_impl.dart'
    as _i322;
import 'package:new_flutter_bloc/domain/repositories/auth_repository.dart'
    as _i807;
import 'package:new_flutter_bloc/domain/repositories/response_repository.dart'
    as _i736;
import 'package:new_flutter_bloc/domain/use_cases/auth/login.dart' as _i860;
import 'package:new_flutter_bloc/domain/use_cases/auth/register.dart' as _i490;
import 'package:new_flutter_bloc/domain/use_cases/response/get_response.dart'
    as _i680;
import 'package:new_flutter_bloc/navigation/app_router.dart' as _i443;
import 'package:new_flutter_bloc/presentation/bloc/auth/auth_bloc.dart'
    as _i889;
import 'package:new_flutter_bloc/presentation/bloc/common/common_bloc.dart'
    as _i432;
import 'package:new_flutter_bloc/presentation/bloc/count/count_bloc.dart'
    as _i919;
import 'package:new_flutter_bloc/presentation/bloc/response/response_bloc.dart'
    as _i853;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i487.AuthRemoteDataSource>(() => _i487.AuthRemoteDataSource());
    gh.factory<_i496.ResponseRemoteDataSource>(
        () => _i496.ResponseRemoteDataSource());
    gh.factory<_i432.CommonBloc>(() => _i432.CommonBloc());
    gh.factory<_i919.CountBloc>(() => _i919.CountBloc());
    gh.lazySingleton<_i443.AppRouter>(() => _i443.AppRouter());
    gh.factory<_i736.ResponseRepository>(
        () => _i322.RepositoryImpl(gh<_i496.ResponseRemoteDataSource>()));
    gh.factory<_i807.AuthRepository>(
        () => _i1007.AuthRepositoryImpl(gh<_i487.AuthRemoteDataSource>()));
    gh.factory<_i680.GetResponse>(
        () => _i680.GetResponse(gh<_i736.ResponseRepository>()));
    gh.factory<_i860.Login>(() => _i860.Login(gh<_i807.AuthRepository>()));
    gh.factory<_i490.Register>(
        () => _i490.Register(gh<_i807.AuthRepository>()));
    gh.factory<_i853.ResponseBloc>(
        () => _i853.ResponseBloc(gh<_i680.GetResponse>()));
    gh.factory<_i889.AuthBloc>(() => _i889.AuthBloc(
          gh<_i860.Login>(),
          gh<_i490.Register>(),
        ));
    return this;
  }
}
