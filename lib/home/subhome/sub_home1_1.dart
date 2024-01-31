import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utility/routes/route_names.dart';

class HomePageChild1 extends StatelessWidget {
  const HomePageChild1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home1-1'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.pushNamed(RoutePathConstants.thirdfavpage);
            },
            child: const Text('third fav page'),
          ),
        ],
      )),
    );
  }
}
