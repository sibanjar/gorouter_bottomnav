import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utility/routes/route_names.dart';

class HomePageChild2 extends StatelessWidget {
  const HomePageChild2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home1-2'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.goNamed(RoutePathConstants.fourthfavpage);
            },
            child: const Text('fourth fav page'),
          ),
          Text('home1-2'),
        ],
      )),
    );
  }
}
