import 'package:flutter/material.dart';


class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF3E7C4F);       // fresh green (tombol, appbar)
  static const Color primaryDark = Color(0xFF2C5D3A);   // hijau tua segar
  static const Color primaryLight = Color(0xFF5A9A6C);  // hijau sedang cerah
  static const Color accent = Color(0xFF7FB069);        // sage green cerah
  static const Color accentLight = Color(0xFFE9F2E2);   // sage sangat muda (chip, iconbox)
  static const Color sage = Color(0xFFA9C39B);          // sage muda
  static const Color olive = Color(0xFF6B8E5A);         // olive segar
  static const Color mint = Color(0xFFDCEBD2);          // hijau pastel

  static const Color background = Colors.white; // latar belakang utama
  static const Color card = Colors.white;
  static const Color cardAlt = Color(0xFFEFF5E9);       
  static const Color border = Color(0xFFDCE7D3);       
  static const Color divider = Color(0xFFE6EEE0);

  // Text
  static const Color text = Color(0xFF22331F);          // hijau gelap kehitaman
  static const Color textDim = Color(0xFF64755F);       // abu kehijauan
  static const Color textMuted = Color(0xFF93A28E);     // abu muda kehijauan

  // Status colors
  static const Color warning = Color(0xFFB8860B);
  static const Color warningBg = Color(0xFFFBF3DF);
  static const Color success = Color(0xFF3E7C4F);
  static const Color successBg = Color(0xFFE9F2E2);
  static const Color error = Color(0xFFB85C5C);
  static const Color errorBg = Color(0xFFFDECEA);

  // Accent untuk kategori
  static const Color categoryGreen = Color(0xFF3E7C4F);
  static const Color categoryYellow = Color(0xFFD9A441);
  static const Color categoryBlue = Color(0xFF6A9EB5);
  static const Color categoryTeal = Color(0xFF5B8A72);
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
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.text,
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
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.border),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.accentLight,
        labelStyle: const TextStyle(color: AppColors.primary, fontSize: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.card,
        indicatorColor: AppColors.accentLight,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: AppColors.primary,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            );
          }
          return const TextStyle(color: AppColors.textDim, fontSize: 11);
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.primary);
          }
          return const IconThemeData(color: AppColors.textDim);
        }),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.border,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.primary,
        contentTextStyle: const TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        behavior: SnackBarBehavior.floating,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        titleTextStyle: const TextStyle(
          color: AppColors.text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
