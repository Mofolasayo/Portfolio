import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
