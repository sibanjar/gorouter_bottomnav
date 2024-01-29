import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubWalletPage extends StatelessWidget {
  const SubWalletPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Wallet'),),
        body:Center(
          child: ElevatedButton(
            onPressed: (){
              context.pop();
            },
            child: const Text('Go to wallet'),
          ),
        )
    );
  }
}
