import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utility/routes/route_names.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            onPressed: ()=>context.pushNamed(RoutePathConstants.wallet),
            child: const Text('Wallet'),
          ),
          const Text('Faq'),
        ],
      )),
    );
  }
}
