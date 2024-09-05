import 'package:flutter/material.dart';

class ScreenSizer extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ScreenSizer({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });
//320
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 400.0;
//800
  static bool isBigMobile(BuildContext context) =>
      MediaQuery.of(context).size.width >= 401 &&
      MediaQuery.of(context).size.width < 550;
  static bool isSmallTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 551 &&
      MediaQuery.of(context).size.width < 1099;
  static bool isBigTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100 &&
      MediaQuery.of(context).size.width < 1150;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1150;

  static double mobileMaxWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;

  static double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1200) {
      return desktop;
    } else if (size.width >= 500 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}