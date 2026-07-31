import 'package:flutter/material.dart';
import '../theme/app_text_styles.dart';

/// Tombol outline dengan ikon — gaya konsisten seluruh aplikasi.
class AppOutlinedButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const AppOutlinedButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 16),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 9),
        textStyle: AppTextStyles.bodySmallMedium,
      ),
    );
  }
}

/// Tombol utama (elevated) dengan ikon.
class AppElevatedButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  final bool fullWidth;

  const AppElevatedButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 16),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        textStyle: AppTextStyles.bodySmallMedium.copyWith(color: Colors.white),
      ),
    );
    if (fullWidth) return SizedBox(width: double.infinity, child: button);
    return button;
  }
}
