import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('home2'),),
      body:  Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.goNamed(RoutePathConstants.home21);
            },
            child: const Text('Home2-1'),
          ),
          Text('home2'),
        ],
      )),
    );
  }
}
