import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({
    super.key,
    required this.maxRadius,
    required this.minRadius,
  });
  final double maxRadius;
  final double minRadius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: maxRadius,
      minRadius: minRadius,
      backgroundImage: const AssetImage('assets/images/myImage.jpg'),
    );
  }
}
