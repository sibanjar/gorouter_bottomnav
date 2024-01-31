import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';

class BlogPage extends StatelessWidget {
  final String title;
  const BlogPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                context.pushNamed(RoutePathConstants.blogpage);
              },
              child: Text('Blog in'),
          ),
          ElevatedButton(
            onPressed: (){
              context.pushNamed(RoutePathConstants.setting);
            },
            child: Text('Homepage ko setting'),
          ),
          const Text('Blog'),
        ],
      ),
    );
  }
}
