import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(onPressed: () {}, child: Text(text)),
    );
  }
}
