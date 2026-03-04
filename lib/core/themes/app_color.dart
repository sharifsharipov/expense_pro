import 'package:flutter/material.dart';

sealed class AppColor {
  static const lightScheme = ColorScheme.light(
    primary: Color(0xFF535ce8),
    secondary: Color(0xFFE2E8F0),
    error: Color(0xFFEF4444),
    shadow: Color(0xFFdee1e6),
    tertiary: Color(0xFF0CB867),
   // surface: Color(0x1E2128FF),
  );
  static const darkScheme = ColorScheme.dark(
    primary: Color(0xFF757df4), // Biroz ochroq ko'k, qora fonda yaxshi ko'rinishi uchun
    secondary: Color(0xFF1E293B), // To'q ko'k-kulrang (Slate)
    error: Color(0xFFF87171), // Yumshoqroq qizil
    shadow: Color(0xFF020617), // Deyarli qora soya
    tertiary: Color(0xFF10B981), // To'q yashil
    surface: Color(0xFF0F172A), // Asosiy yuza rangi
    onSurface: Colors.white, // Yuzadagi matnlar rangi
  );
}
