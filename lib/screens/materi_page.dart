import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../theme/app_text_styles.dart';
import '../data/client_content.dart';
import '../components/app_cards.dart';
import '../components/app_typography.dart';
import 'file_list_page.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const PageHeader(title: 'Materials', subtitle: ''),
        const SizedBox(height: 16),
        ...List.generate(materiList.length, (i) {
          final m = materiList[i];
          return _MateriCard(materi: m, index: i);
        }),
      ],
    );
  }
}

class _MateriCard extends StatelessWidget {
  final MateriItem materi;
  final int index;

  const _MateriCard({required this.materi, required this.index});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: const EdgeInsets.only(bottom: 12),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => MateriDetailPage(materi: materi)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.accentLight,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: AppTextStyles.title.copyWith(color: AppColors.primary),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(materi.title, style: AppTextStyles.titleSmall),
                if (materi.subtitle.isNotEmpty) ...[
                  const SizedBox(height: 3),
                  Text(
                    materi.subtitle,
                    style: AppTextStyles.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.textDim),
        ],
      ),
    );
  }
}

class MateriDetailPage extends StatelessWidget {
  final MateriItem materi;

  const MateriDetailPage({super.key, required this.materi});

  Future<void> _openLink(BuildContext context, String url) async {
    final opened = await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
    if (!opened && context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Tidak dapat membuka: $url')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(materi.title)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SolidHeaderCard(
            icon: materi.icon,
            title: materi.title,
            subtitle: materi.subtitle,
          ),
          const SizedBox(height: 16),
          ...materi.sections.map((s) => _SectionCard(section: s)),
          ...materi.files.map(
            (file) => FileLinkCard(
              item: file,
              showButtons: true,
              onOpen: file.url == null
                  ? null
                  : () => _openLink(context, file.url!),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final MateriSection section;

  const _SectionCard({required this.section});

  Future<void> _openLink() async {
    if (section.linkUrl == null) return;
    await launchUrl(
      Uri.parse(section.linkUrl!),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: const EdgeInsets.only(bottom: 12),
      onTap: section.linkUrl == null ? null : _openLink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (section.heading.isNotEmpty) ...[
            Text(section.heading, style: AppTextStyles.titleSmall),
            const SizedBox(height: 8),
          ],
          if (section.body.isNotEmpty)
            Text(
              section.body,
              style: AppTextStyles.bodySmall.copyWith(height: 1.6),
            ),
          if (section.imageAsset != null) ...[
            if (section.heading.isNotEmpty || section.body.isNotEmpty)
              const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              decoration: BoxDecoration(
                color: AppColors.accentLight,
                borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
              ),
              child: Column(
                children: [
                  Image.asset(section.imageAsset!, fit: BoxFit.contain),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
