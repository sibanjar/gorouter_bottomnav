import 'package:flutter/material.dart';

class FourthFavouritePage extends StatelessWidget {
  const FourthFavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fourth Favourite page'),),
      body: const Center(
          child: Text('Fourth Favourite')),
    );
  }
}
