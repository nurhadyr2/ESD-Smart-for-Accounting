import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/app_text_styles.dart';

/// Kartu dasar aplikasi — putih, border halus, radius konsisten.
class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Color? backgroundColor;

  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
    this.margin,
    this.onTap,
    this.borderColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(AppTheme.radiusLarge);
    return Container(
      margin: margin,
      child: Material(
        color: backgroundColor ?? AppColors.card,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              border: Border.all(color: borderColor ?? AppColors.border),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

/// Kotak ikon dengan latar sage muda.
class IconBox extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final Color? color;
  final Color? iconColor;

  const IconBox({
    super.key,
    required this.icon,
    this.size = 38,
    this.iconSize = 19,
    this.color,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color ?? AppColors.accentLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: iconColor ?? AppColors.primary, size: iconSize),
    );
  }
}

/// Kartu header berwarna solid (tanpa gradient).
class SolidHeaderCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? color;

  const SolidHeaderCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = color ?? AppColors.primary;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 26),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.onPrimaryTitle),
                const SizedBox(height: 2),
                Text(subtitle, style: AppTextStyles.onPrimaryBody),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Alias kompatibilitas — kini menggunakan warna solid.
class GradientHeaderCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final List<Color>? colors;

  const GradientHeaderCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return SolidHeaderCard(
      icon: icon,
      title: title,
      subtitle: subtitle,
      color: colors?.first ?? AppColors.primary,
    );
  }
}
