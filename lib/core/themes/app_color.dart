import 'package:flutter/material.dart';

sealed class AppColor {
  // --- LIGHT THEME (Oq bo'lmagan, Slate-bazli fonlar) ---
  static const lightScheme = ColorScheme.light(
    primary: Color(0xFF535CE8),           // Brend ko'k rangi
    onPrimary: Colors.white,
    
    secondary: Color(0xFF64748B),         // Yordamchi matnlar (Slate 500)
    onSecondary: Colors.white,
    
    // TextField va Cardlar uchun fon (Oq emas!)
    surfaceContainerHighest: Color(0xFFF1F5F9), // Slate 100
    
    // Asosiy ilova foni
    surface: Color(0xFFF8FAFC),           // Slate 50 (Juda och ko'kish-kulrang)
    onSurface: Color(0xFF0F172A),         // Asosiy matn (Slate 900)
    
    tertiary: Color(0xFF0CB867),          // Daromad va Success (Yashil)
    error: Color(0xFFEF4444),             // Xarajat va Xatolik (Qizil)
    
    outline: Color(0xFFCBD5E1),           // Borderlar (Slate 300)
    outlineVariant: Color(0xFFE2E8F0),    // Dividerlar (Slate 200)
  );

  // --- DARK THEME (Chuqur ko'k-qora tonlar) ---
  static const darkScheme = ColorScheme.dark(
    primary: Color(0xFF757DF4),           // Och ko'k (Darkda yaxshi o'qiladi)
    onPrimary: Colors.white,
    
    secondary: Color(0xFF94A3B8),         // Dark mode uchun slate 400
    
    // Dark mode uchun TextField foni
    surfaceContainerHighest: Color(0xFF1E293B), // Slate 800
    
    // Asosiy dark fon
    surface: Color(0xFF020617),           // Slate 950 (Deyarli qora)
    onSurface: Colors.white,
    
    tertiary: Color(0xFF10B981),          // To'q yashil
    error: Color(0xFFF87171),             // Yumshoq qizil
    
    outline: Color(0xFF334155),           // Dark border (Slate 700)
    outlineVariant: Color(0xFF1E293B),    // Dark divider
  );

  // --- QO'SHIMCHA FINTECH RANGALARI ---
  static const Color success = Color(0xFF0CB867);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);
}