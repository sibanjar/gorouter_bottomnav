import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubSettings extends StatelessWidget {
  const SubSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sub Settings'),),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              context.pop();
            },
            child: const Text('go back'),
          ),
        ),
      ),
    );
  }
}
