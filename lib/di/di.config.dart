// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:new_flutter_bloc/bloc/common/common_bloc.dart' as _i925;
import 'package:new_flutter_bloc/bloc/count/count_bloc.dart' as _i86;
import 'package:new_flutter_bloc/bloc/response/response_bloc.dart' as _i859;
import 'package:new_flutter_bloc/navigation/app_navigator.dart' as _i1024;
import 'package:new_flutter_bloc/navigation/app_router.dart' as _i443;

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
    gh.factory<_i925.CommonBloc>(() => _i925.CommonBloc());
    gh.factory<_i86.CountBloc>(() => _i86.CountBloc());
    gh.factory<_i859.ResponseBloc>(() => _i859.ResponseBloc());
    gh.lazySingleton<_i443.AppRouter>(() => _i443.AppRouter());
    gh.lazySingleton<_i1024.AppNavigator>(
        () => _i1024.AppNavigator(gh<_i443.AppRouter>()));
    return this;
  }
}
