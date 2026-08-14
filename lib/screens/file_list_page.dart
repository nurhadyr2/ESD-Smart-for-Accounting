import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../theme/app_text_styles.dart';
import '../data/app_data.dart';
import '../components/app_typography.dart';
import '../components/app_buttons.dart';

class FileListPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<FileLinkItem> items;
  final bool showButtons;

  const FileListPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.items,
    this.showButtons = true,
  });

  Future<void> _openLink(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Tidak dapat membuka: $url'),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Link: $url'),
            backgroundColor: AppColors.primary,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        PageHeader(title: title, subtitle: subtitle),
        const SizedBox(height: 16),
        ...items.map(
          (item) => _FileCard(
            item: item,
            showButtons: showButtons,
            onOpen: () => _openLink(context, item.url),
          ),
        ),
      ],
    );
  }
}

class _FileCard extends StatelessWidget {
  final FileLinkItem item;
  final bool showButtons;
  final VoidCallback onOpen;

  const _FileCard({
    required this.item,
    required this.showButtons,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: AppColors.accentLight,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(item.icon, color: AppColors.primary, size: 19),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(item.title, style: AppTextStyles.titleSmall),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.insert_drive_file,
                size: 12,
                color: AppColors.textDim,
              ),
              const SizedBox(width: 5),
              Text(item.meta, style: AppTextStyles.caption),
            ],
          ),
          if (showButtons) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: AppOutlinedButton(
                    icon: Icons.visibility_outlined,
                    label: 'Lihat',
                    onPressed: onOpen,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppElevatedButton(
                    icon: Icons.download,
                    label: 'Unduh',
                    onPressed: onOpen,
                  ),
                ),
              ],
            ),
          ] else ...[
            const SizedBox(height: 10),
            AppElevatedButton(
              icon: Icons.open_in_new,
              label: 'Buka Link',
              onPressed: onOpen,
              fullWidth: true,
            ),
          ],
        ],
      ),
    );
  }
}
