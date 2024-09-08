import 'package:flutter/material.dart';
import 'package:mofolasayo/screens/meditag.dart';

class Bio extends StatelessWidget {
  const Bio({
    super.key,
    required this.visible,
    required this.widget,
  });
  final bool visible;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 0.0 : 1.0,
      duration: const Duration(seconds: 5),
      child: widget,
    );
  }
}
