import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flutter_bloc/api/response_api.dart';
import 'package:new_flutter_bloc/services/navigation_service.dart';
import 'package:new_flutter_bloc/view/page_one/page_one.dart';
import 'package:new_flutter_bloc/view/page_two/page_two.dart';

import 'http_services/base_response.dart';
import 'model/response_model.dart';

Future<void> main() async {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/${PageOne.route}',
  navigatorKey: NavigationService.navigatorKey,
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAPi();
  }

  Future<void> getAPi() async {
    BaseResponse<List<ResponseModel>>? test = await responseApi();
    if (kDebugMode) {
      print('request api: ${test?.data?.length}');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
