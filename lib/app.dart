import 'package:flutter/material.dart';

import 'di/di.dart';
import 'navigation/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = getIt.get<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
