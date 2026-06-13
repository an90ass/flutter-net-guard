import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF0F172A);
  static const Color surface = Color(0xFF1E293B);
  static const Color primary = Color(0xFF38BDF8);
  static const Color secondary = Color(0xFF818CF8);
  static const Color accent = Color(0xFFF472B6);
  
  static const Color lowRisk = Color(0xFF22C55E);
  static const Color mediumRisk = Color(0xFFF59E0B);
  static const Color highRisk = Color(0xFFEF4444);
  
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);
  
  static const LinearGradient scanGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
