import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utility/routes/route_names.dart';

class SecondFavouritePage extends StatelessWidget {
  const SecondFavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Favourite page'),),
      body: Center(
          child: Column(
            children: [
              const Text('Second Favourite'),
              ElevatedButton(
                onPressed: (){
                  context.goNamed(RoutePathConstants.fourthfavpage);
                },
                child: const Text('fourth fav page'),
              ),
              ElevatedButton(
                onPressed: (){
                  context.goNamed(RoutePathConstants.thirdfavpage);
                },
                child: const Text('third fav page'),
              ),
            ],
          )),
    );
  }
}
