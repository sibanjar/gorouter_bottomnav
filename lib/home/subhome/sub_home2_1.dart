import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utility/routes/route_names.dart';

class HomePagechild2 extends StatelessWidget {
  const HomePagechild2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home2-1'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.pushNamed(RoutePathConstants.home1);
            },
            child: const Text('go home1'),
          ),
          Text('home2-1'),
        ],
      )),
    );
  }
}
