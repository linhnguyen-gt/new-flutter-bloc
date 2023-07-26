import 'package:go_router/go_router.dart';

import '../model/count/count_model.dart';
import '../view/page_one/page_one.dart';
import '../view/page_two/page_two.dart';
import 'app_navigator.dart';

class SetupRoute {
  late final GoRouter appRouter = GoRouter(
    initialLocation: '/${PageOne.route}',
    navigatorKey: AppNavigator.navigatorKey,
    routes: [
      GoRoute(
        name: PageOne.route,
        path: '/${PageOne.route}',
        builder: (context, state) => const PageOne(title: 'Home Page One'),
      ),
      GoRoute(
        name: PageTwo.route,
        path: '/${PageTwo.route}',
        builder: (context, state) {
          final params = state.extra as CountModel;
          return PageTwo(
            title: 'Home Page Two',
            countPageOne: params,
          );
        },
      ),
    ],
  );
}
