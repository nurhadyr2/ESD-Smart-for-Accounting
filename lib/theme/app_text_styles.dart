import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_theme.dart';

/// Sistem tipografi terpusat — Plus Jakarta Sans
///
/// Skala ukuran font yang konsisten di seluruh aplikasi:
/// - display  : 24 — judul besar
/// - headline : 20 — judul halaman
/// - title    : 16 — judul kartu / section
/// - body     : 13 — teks isi utama
/// - bodySmall: 11 — teks sekunder / deskripsi
/// - label    : 10 — label kecil / eyebrow
class AppTextStyles {
  AppTextStyles._();

  /// Font dasar Plus Jakarta Sans
  static TextStyle get _base =>
      GoogleFonts.poppins(color: AppColors.text, height: 1.5);

  // ── Display ──────────────────────────────────────────────
  static TextStyle get display =>
      _base.copyWith(fontSize: 24, fontWeight: FontWeight.w800, height: 1.3);

  // ── Headline ─────────────────────────────────────────────
  static TextStyle get headline =>
      _base.copyWith(fontSize: 20, fontWeight: FontWeight.w700, height: 1.3);

  // ── Title ────────────────────────────────────────────────
  static TextStyle get title =>
      _base.copyWith(fontSize: 16, fontWeight: FontWeight.w700);

  static TextStyle get titleSmall =>
      _base.copyWith(fontSize: 14, fontWeight: FontWeight.w700);

  // ── Body ─────────────────────────────────────────────────
  static TextStyle get body =>
      _base.copyWith(fontSize: 13, fontWeight: FontWeight.w400);

  static TextStyle get bodyMedium =>
      _base.copyWith(fontSize: 13, fontWeight: FontWeight.w600);

  // ── Body Small ───────────────────────────────────────────
  static TextStyle get bodySmall => _base.copyWith(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textDim,
  );

  static TextStyle get bodySmallMedium => _base.copyWith(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppColors.textDim,
  );

  // ── Label / Eyebrow ──────────────────────────────────────
  static TextStyle get label => _base.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.6,
    color: AppColors.textDim,
  );

  static TextStyle get labelPrimary => _base.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.6,
    color: AppColors.primary,
  );

  // ── Caption ──────────────────────────────────────────────
  static TextStyle get caption => _base.copyWith(
    fontSize: 9.5,
    fontWeight: FontWeight.w600,
    color: AppColors.textMuted,
  );

  // ── On Primary (teks di atas warna primer) ───────────────
  static TextStyle get onPrimaryTitle => _base.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 1.3,
  );

  static TextStyle get onPrimaryBody => _base.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white.withValues(alpha: 0.85),
  );

  static TextStyle get onPrimaryLabel => _base.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
