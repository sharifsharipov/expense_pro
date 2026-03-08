import 'package:flutter/material.dart';

sealed class AppColor {
  static const lightScheme = ColorScheme.light(
    primary: Color.fromARGB(255, 4, 30, 62),           
    onPrimary: Colors.white,
    secondary: Color(0xFF64748B),         
    onSecondary: Colors.white,
    surfaceContainerHighest: Color(0xFFF1F5F9), 
    surface: Color(0xFFF8FAFC),           
    onSurface: Color(0xFF0F172A),         
    tertiary: Color(0xFF0CB867), 
    error: Color(0xFFEF4444),             
    outline: Color(0xFFCBD5E1),           
    outlineVariant: Color(0xFFE2E8F0),    
  );

  static const darkScheme = ColorScheme.dark(
    primary: Color(0xff2387FF),           
    onPrimary: Colors.white,
    secondary: Color(0xFF94A3B8),         
    surfaceContainerHighest: Color(0xFF1E293B), 
    surface: Color(0xFF020617),           
    onSurface: Colors.white,
    tertiary: Color(0xFF10B981),          
    error: Color(0xFFF87171),             
    outline: Color(0xFF334155),           
    outlineVariant: Color(0xFF1E293B),    
  );
  static const Color success = Color(0xFF0CB867);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);
}