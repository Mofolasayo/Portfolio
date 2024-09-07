import 'package:flutter/material.dart';

class Angrybird extends StatelessWidget {
  const Angrybird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Text('Angry Bird')),
    );
  }
}
