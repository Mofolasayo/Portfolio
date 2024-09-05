import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/icons.dart';
import 'package:mofolasayo/utils/screen_sizer.dart';

class AnimatedIconsRow extends StatefulWidget {
  @override
  _AnimatedIconsRowState createState() => _AnimatedIconsRowState();
}

class _AnimatedIconsRowState extends State<AnimatedIconsRow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  // List of SVG strings representing the icons
  final List<String> svgIcons = [
    MyIcons.flutter,
    MyIcons.dart,
    MyIcons.bloc,
    MyIcons.riverpod,
    MyIcons.firebaseLogo,
    MyIcons.figma,
    MyIcons.github,
    MyIcons.flutter,
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();

    _animation = Tween<Offset>(
      begin: Offset(0.7, 0.0),
      end: Offset(-0.8, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          ScreenSizer.isDesktop(context) ? 14 : 6,
          (index) => Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: MyColors.greyIcon,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.string(
                svgIcons[index % svgIcons.length],
                width: 30,
                height: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
