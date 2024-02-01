import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_bottomnav/ask/ask_bottomsheet.dart';

import '../utility/routes/route_names.dart';

class AskQuestion extends StatelessWidget {
  const AskQuestion({super.key});

  void showAskBottomsheet(BuildContext context){
    showModalBottomSheet(
        useSafeArea: true,
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
        barrierColor: Colors.transparent,
        context: context,
        builder: (context)=>const AskBottomSheet()
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ask Your Question'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed:(){
                  showAskBottomsheet(context);
                },
                child:const Text('ask pop up')
            ),

            const Text('ask question'),
          ],
        ),
      ),
    );
  }
}
