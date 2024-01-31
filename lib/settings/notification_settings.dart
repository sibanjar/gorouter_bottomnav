import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Settings'),),
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
