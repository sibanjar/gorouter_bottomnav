import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChartSetting extends StatelessWidget {
  const ChartSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chart Settings'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            context.pop();
          },
          child: const Text('go back'),
        ),
      ),
    );
  }
}
