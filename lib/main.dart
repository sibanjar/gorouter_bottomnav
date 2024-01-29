import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gorouter_bottomnav/utility/routes/app_routes.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  AppRouter router =AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.returnRouter(false),
    );

  }
}

