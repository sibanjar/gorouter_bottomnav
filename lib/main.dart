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
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[800], // Adjust the shade of grey as needed
        hintColor: Colors.grey[600], // Adjust the shade of grey as needed
      ),
    );

  }
}

