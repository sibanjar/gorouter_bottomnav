import 'package:flutter/material.dart';
import 'package:gorouter_bottomnav/wallet/sub_walletpage.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  void showSubWallet(BuildContext context){
    showModalBottomSheet(
        useSafeArea: true,
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
        barrierColor: Colors.transparent,
        context: context,
        builder: (context)=>SubWalletPage()
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wallet'),),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            showSubWallet(context);

          },
          child: Text('Go to sub wallet'),
        ),
      )
    );
  }
}
