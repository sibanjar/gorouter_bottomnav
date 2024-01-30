import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite page'),),
      body: Center(
          child: Column(
            children: [
              const Text('Favourite'),
              ElevatedButton(
                onPressed: (){
                  context.goNamed(RoutePathConstants.secondfavpage);
                },
                child: const Text('second fav'),
              ),
              ElevatedButton(
                onPressed: (){
                  context.goNamed(RoutePathConstants.thirdfavpage);
                },
                child: const Text('third fav'),
              ),
            ],
          )),
    );
  }
}
