import 'package:bloc_small/bloc_small.dart';
import 'package:injectable/injectable.dart';

import '../navigation/app_router.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() {
  getIt.registerAppRouter<AppRouter>(AppRouter());
  getIt.registerCore();
  getIt.init();
}
