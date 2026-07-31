import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF2D5A3D);       // forest green (tombol, header)
  static const Color primaryDark = Color(0xFF1E3D28);   // hijau sangat tua
  static const Color primaryLight = Color(0xFF4A7C59);  // hijau sedang
  static const Color accent = Color(0xFF7FB069);        // sage green (aksen)
  static const Color accentLight = Color(0xFFE8F5E9);   // hijau sangat muda (background chip)
  static const Color sage = Color(0xFFA8C5A0);          // sage muda
  static const Color olive = Color(0xFF6B8E5A);         // olive green
  static const Color mint = Color(0xFFC8E6C9);          // mint/hijau pastel

  static const Color background = Color(0xFFF5F9F3);    // latar kehijauan sangat lembut
  static const Color card = Colors.white;
  static const Color cardAlt = Color(0xFFF0F7EE);       // card alternatif
  static const Color border = Color(0xFFD4E4D0);        // border hijau muda
  static const Color divider = Color(0xFFE0EBDD);

  // Text
  static const Color text = Color(0xFF1A2E1F);          // hijau gelap kehitaman
  static const Color textDim = Color(0xFF5A6B5D);       // abu kehijauan
  static const Color textMuted = Color(0xFF8A9B8D);     // abu muda kehijauan

  // Status colors
  static const Color warning = Color(0xFFB8860B);       // kuning tua/amber
  static const Color warningBg = Color(0xFFFEF8E7);
  static const Color success = Color(0xFF2D5A3D);       // sama dengan primary
  static const Color successBg = Color(0xFFE8F5E9);
  static const Color error = Color(0xFFB85C5C);         // merah bata lembut
  static const Color errorBg = Color(0xFFFDECEA);

  // Accent untuk kategori (seperti di gambar: hijau, kuning, biru muda)
  static const Color categoryGreen = Color(0xFF2D5A3D);
  static const Color categoryYellow = Color(0xFFD4A017);
  static const Color categoryBlue = Color(0xFF5B8FA8);
  static const Color categoryTeal = Color(0xFF4A7C6F);
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
            borderRadius: BorderRadius.circular(24), // lebih rounded seperti gambar
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
