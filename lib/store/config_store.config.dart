// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:new_flutter_bloc/bloc/count/count_bloc.dart' as _i4;
import 'package:new_flutter_bloc/bloc/response/response_bloc.dart' as _i6;
import 'package:new_flutter_bloc/navigation/app_navigator.dart' as _i3;
import 'package:new_flutter_bloc/services/navigation_service.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppNavigator>(() => _i3.AppNavigator());
    gh.factory<_i4.CountBloc>(() => _i4.CountBloc());
    gh.factory<_i5.NavigationService>(() => _i5.NavigationService());
    gh.factory<_i6.ResponseBloc>(() => _i6.ResponseBloc());
    return this;
  }
}
