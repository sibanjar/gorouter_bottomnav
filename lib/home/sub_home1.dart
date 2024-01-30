import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home1'),),
      body:  Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.goNamed(RoutePathConstants.home11);
            },
            child: const Text('Home1-1'),
          ),
          ElevatedButton(
            onPressed: (){
              context.goNamed(RoutePathConstants.home12);
            },
            child: const Text('Home1-2'),
          ),
          Text('home1'),
        ],
      )),
    );
  }
}
