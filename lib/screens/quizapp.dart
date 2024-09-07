import 'package:flutter/material.dart';

class Quizapp extends StatelessWidget {
  const Quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Text('Quiz App')),
    );
  }
}
