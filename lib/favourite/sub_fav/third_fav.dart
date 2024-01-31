import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utility/routes/route_names.dart';

class ThirdFavouritePage extends StatelessWidget {
  const ThirdFavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Favourite page'),),
      body: Center(
          child: Column(
            children: [
              const Text('Third Favourite'),
              ElevatedButton(
                onPressed: (){
                  context.pushNamed(RoutePathConstants.home1);
                },
                child: const Text('Home1'),
              ),
            ],
          )),
    );
  }
}
