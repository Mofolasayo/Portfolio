import 'package:flutter/material.dart';
import 'package:mofolasayo/utils/moving_containers.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.purple,
      child: Center(child: AnimatedIconsRow()),
    );
  }
}
