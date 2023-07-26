import 'package:go_router/go_router.dart';

import '../view/page_one/page_one.dart';
import '../view/page_two/page_two.dart';
import 'app_navigator.dart';

class SetupRoute {
  GoRouter get appRouter => GoRouter(
        initialLocation: '/${PageOne.route}',
        navigatorKey: AppNavigator.navigatorKey,
        routes: [
          GoRoute(
            name: PageOne.route,
            path: '/${PageOne.route}',
            builder: (context, state) =>
                const PageOne(title: 'Flutter Demo Home Page One'),
          ),
          GoRoute(
            name: PageTwo.route,
            path: '/${PageTwo.route}',
            builder: (context, state) =>
                const PageTwo(title: 'Flutter Demo Home Page Two'),
          ),
        ],
      );
}
