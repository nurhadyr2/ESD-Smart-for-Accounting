import 'package:flutter/material.dart';

/// Palet warna hijau — tema lingkungan / manufaktur hijau
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF1B5E20);       // hijau tua
  static const Color primaryDark = Color(0xFF0D3B12);   // hijau sangat tua
  static const Color primaryLight = Color(0xFF4C8C4A);  // hijau sedang
  static const Color accent = Color(0xFF66BB6A);        // hijau terang
  static const Color accentLight = Color(0xFFE8F5E9);   // hijau sangat muda
  static const Color teal = Color(0xFF26A69A);
  static const Color lime = Color(0xFF9CCC65);

  static const Color background = Color(0xFFF1F8F2);    // latar kehijauan lembut
  static const Color card = Colors.white;
  static const Color border = Color(0xFFDCE8DD);
  static const Color text = Color(0xFF1B2531);
  static const Color textDim = Color(0xFF6B7B6F);

  static const Color warning = Color(0xFFC2760A);
  static const Color warningBg = Color(0xFFFEF3E2);
  static const Color success = Color(0xFF2E7D32);
  static const Color successBg = Color(0xFFE8F5E9);
  static const Color error = Color(0xFFC62828);
  static const Color errorBg = Color(0xFFFFEBEE);
}

class AppTheme {
  AppTheme._();

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.card,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppColors.border),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
