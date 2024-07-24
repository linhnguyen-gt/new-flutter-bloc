import 'package:flutter/material.dart';

import 'app.dart';
import 'di/di.dart';

Future<void> main() async {
  configureInjection();
  runApp(MyApp());
}
