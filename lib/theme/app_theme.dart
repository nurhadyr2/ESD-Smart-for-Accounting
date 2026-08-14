import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Palet warna hijau eco-friendly — sesuai gambar referensi
/// Hijau segar (fresh green), sage muda, dan latar krem/ivory yang terang.
class AppColors {
  AppColors._();

  // ── Warna Primer ─────────────────────────────────────────
  static const Color primary = Color(0xFF3E7C4F); // hijau segar
  static const Color primaryDark = Color(0xFF2C5D3A); // hijau tua
  static const Color primaryLight = Color(0xFF5A9A6C); // hijau sedang
  static const Color accent = Color(0xFF7FB069); // sage cerah
  static const Color accentLight = Color(0xFFE9F2E2); // sage sangat muda
  static const Color sage = Color(0xFFA9C39B);
  static const Color olive = Color(0xFF6B8E5A);
  static const Color mint = Color(0xFFDCEBD2);

  // ── Latar & Permukaan ────────────────────────────────────
  static const Color background = Color(0xFFF6F9F1);
  static const Color card = Colors.white;
  static const Color cardAlt = Color(0xFFEFF5E9);
  static const Color border = Color(0xFFDCE7D3);
  static const Color divider = Color(0xFFE6EEE0);

  // ── Teks ─────────────────────────────────────────────────
  static const Color text = Color(0xFF22331F);
  static const Color textDim = Color(0xFF64755F);
  static const Color textMuted = Color(0xFF93A28E);

  // ── Status ───────────────────────────────────────────────
  static const Color warning = Color(0xFFB8860B);
  static const Color warningBg = Color(0xFFFBF3DF);
  static const Color success = Color(0xFF3E7C4F);
  static const Color successBg = Color(0xFFE9F2E2);
  static const Color error = Color(0xFFB85C5C);
  static const Color errorBg = Color(0xFFFDECEA);

  // ── Kategori ─────────────────────────────────────────────
  static const Color categoryGreen = Color(0xFF3E7C4F);
  static const Color categoryYellow = Color(0xFFD9A441);
  static const Color categoryBlue = Color(0xFF6A9EB5);
  static const Color categoryTeal = Color(0xFF5B8A72);
}

/// Tema aplikasi — Plus Jakarta Sans, tanpa gradient, sudut membulat.
class AppTheme {
  AppTheme._();

  /// Radius standar komponen
  static const double radiusSmall = 10;
  static const double radiusMedium = 14;
  static const double radiusLarge = 16;
  static const double radiusPill = 24;

  static ThemeData get theme {
    final textTheme = GoogleFonts.poppinsTextTheme();

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.card,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.text,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.card,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
          side: const BorderSide(color: AppColors.border),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          textStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusPill),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary, width: 1.5),
          textStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusPill),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primary),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.accentLight,
        labelStyle: GoogleFonts.poppins(
          color: AppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.primary,
        indicatorColor: Colors.white.withValues(alpha: 0.18),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return GoogleFonts.poppins(
            color: selected ? Colors.white : Colors.white70,
            fontSize: 11,
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return IconThemeData(color: selected ? Colors.white : Colors.white70);
        }),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.border,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.primary,
        contentTextStyle: GoogleFonts.poppins(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
        ),
        behavior: SnackBarBehavior.floating,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.card,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: GoogleFonts.poppins(
          color: AppColors.text,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
