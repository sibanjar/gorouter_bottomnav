import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page'),),
      body: SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
        ElevatedButton(
            onPressed: ()=>context.goNamed(RoutePathConstants.setting),
        child: const Text('Settings'),
        ),
          ElevatedButton(
            onPressed: ()=>context.goNamed(RoutePathConstants.wallet),
        child: const Text('Wallet'),
        ),
      ]
       ),
    ),
    ),
    );
  }
}
