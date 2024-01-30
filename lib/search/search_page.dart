import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search page'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: ()=>context.pushNamed(RoutePathConstants.wallet),
            child: const Text('pushWallet'),
          ),
          ElevatedButton(
            onPressed: ()=>context.goNamed(RoutePathConstants.wallet),
            child: const Text('goWallet'),
          ),
        ],
      )),
    );
  }
}
