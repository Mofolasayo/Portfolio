import 'package:flutter/material.dart';

//CustomTextStyle.regular(fontSize: 16),
//CustomTextStyle.regular(color: GlobalColors.borderColor),

class MyTextStyle {
  static const String fontFamily = 'Inter';
  static bool isItalic = false;
  static const Color defaultColor = Color(0xFF828282);
  static double defaultFontSize = 13;
  static double defaultSpacing = 0;

  static TextStyle thin(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        letterSpacing: spacing ?? defaultSpacing,
        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,
        fontWeight: FontWeight.w100);
        
  }

  static TextStyle extraLight(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        letterSpacing: spacing ?? defaultSpacing,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

        fontWeight: FontWeight.w200);
  }

  static TextStyle light(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        letterSpacing: spacing ?? defaultSpacing,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

        fontWeight: FontWeight.w300);
  }

  static TextStyle regular(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        letterSpacing: spacing ?? defaultSpacing,

        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

        fontWeight: FontWeight.w400);
  }

  static TextStyle medium(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
      letterSpacing: spacing ?? defaultSpacing,

      fontFamily: fontFamily,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: FontWeight.w500,
      fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

      color: color ?? defaultColor,
    );
  }

  static TextStyle semiBold(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
      letterSpacing: spacing ?? defaultSpacing,

      fontFamily: fontFamily,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: FontWeight.w600,
      fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

      color: color ?? defaultColor,
    );
  }

  static TextStyle bold(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
      letterSpacing: spacing ?? defaultSpacing,

      fontFamily: fontFamily,
      fontSize: fontSize ?? defaultFontSize,
      fontWeight: FontWeight.w700,
      fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

      color: color ?? defaultColor,
    );
  }

  static TextStyle extraBold(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        letterSpacing: spacing ?? defaultSpacing,

        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

        fontWeight: FontWeight.w800);
  }

  static TextStyle black(
      {Color? color, double? fontSize, bool? isItalic, double? spacing}) {
    return TextStyle(
        letterSpacing: spacing ?? defaultSpacing,

        fontFamily: fontFamily,
        fontSize: fontSize ?? defaultFontSize,
        color: color ?? defaultColor,
        fontStyle: (isItalic ?? false) ? FontStyle.italic : FontStyle.normal,

        fontWeight: FontWeight.w900);
  }
}
