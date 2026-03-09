import 'package:flutter/material.dart';

sealed class AppColor {
  static const lightScheme = ColorScheme.light(
    primary: Color(0xffDD1470),
    onPrimary: Colors.white,
    secondary: Color(0xff1B93FE),
    onSecondary: Colors.white,
    surface: Color(0xFFF8FAFC),
    onSurface: Color(0xff212121),
    surfaceContainerHighest: Color(0xffF6F6F6),
    tertiary: Color(0xff7E5FA6),
    error: Color(0xfff75555),
    outline: Color(0xffCCCFD7),
    outlineVariant: Color(0xffe2e3ea),
  );

  static const darkScheme = ColorScheme.dark(
    primary: Color(0xffDD1470),
    onPrimary: Colors.white,
    secondary: Color(0xff1B93FE),
    onSecondary: Colors.white,
    surface: Color(0xFF020617),
    onSurface: Colors.white,
    surfaceContainerHighest: Color(0xff2D2D2D),
    tertiary: Color(0xff7E5FA6),
    error: Color(0xfff75555),
    outline: Color(0xff3A3A3A),
    outlineVariant: Color(0xff1E1E1E),
  );

  static const Color success = Color(0xFF0CB867);
  static const Color warning = Color(0xffE6BB3D);
  static const Color info = Color(0xff1B93FE);
  static const Color grey90 = Color(0xff909090);
  static const Color grey73 = Color(0xff737373);
  static const Color lightGreyF0 = Color(0xffF0F0F0);
}
