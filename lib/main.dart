import 'package:flutter/material.dart';

import 'navigation/setup_route.dart';
import 'store/config_store.dart';

Future<void> main() async {
  configureInjection();
  runApp(const MyApp());
}

final _router = SetupRoute();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.appRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
