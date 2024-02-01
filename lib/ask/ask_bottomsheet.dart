import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';

class AskBottomSheet extends StatelessWidget {
  const AskBottomSheet({super.key});


  Future<bool?> AskShowDialog(
      BuildContext context,
      String title,
      String content,
      {
        bool dismissible = true,
        String cancelText = 'cancel',
        String confirmText = 'Discard'
      }
      ) async {
      return (await showDialog(
          context: context,
          barrierDismissible: dismissible,
          builder: (context)=> AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: Text(title,style: Theme.of(context).textTheme.headlineSmall),
            content: Text(content),
            actions: <Widget>[
              cancelText != '' ?
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(cancelText,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.tertiary),),
              ):Container(),
              FilledButton.tonal(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(confirmText)
              )
            ],
          )));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ask Bottom sheet'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AskShowDialog(
                context, 'ask question.', '', cancelText: 'No',
                confirmText: 'Yes').then((result) {
              if(result !=null && result == true){context.goNamed(RoutePathConstants.home1);
              }else{
                context.goNamed(RoutePathConstants.home);
              }

            });
          },
      child: const Text('popup'),),
    ));
  }
}
