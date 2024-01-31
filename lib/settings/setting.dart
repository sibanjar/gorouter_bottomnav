import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'),),
      body: Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed:(){
                context.pushNamed(RoutePathConstants.chart);
              },
              child:const Text('Chart Settings')
          ),
          ElevatedButton(
              onPressed:(){
                context.pushNamed(RoutePathConstants.notification);
              },
              child:const Text('Notification Settings')
          ),
          Text('Settings'),
        ],
      ),
    ),);
  }
}
