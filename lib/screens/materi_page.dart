import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../data/app_data.dart';
import '../components/app_cards.dart';
import '../components/app_typography.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const PageHeader(
          title: 'Materi Pembelajaran',
          subtitle:
              'Pilih sub-bab materi untuk memulai sesi belajar mandiri. Setiap modul dilengkapi dengan teori dan contoh kasus.',
        ),
        const SizedBox(height: 16),
        ...materiList.asMap().entries.map((entry) {
          final index = entry.key;
          final materi = entry.value;
          return _MateriCard(
            materi: materi,
            number: index + 1,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MateriDetailPage(materi: materi),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}

class _MateriCard extends StatelessWidget {
  final MateriItem materi;
  final int number;
  final VoidCallback? onTap;

  const _MateriCard({
    required this.materi,
    required this.number,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: const EdgeInsets.only(bottom: 10),
      onTap: onTap,
      child: Row(
        children: [
          IconBox(icon: materi.icon, size: 40, iconSize: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BAB $number',
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  materi.title,
                  style: const TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  materi.subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textDim,
                  ),
                ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(materi.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GradientHeaderCard(
            icon: materi.icon,
            title: materi.title,
            subtitle: materi.subtitle,
          ),
          const SizedBox(height: 16),
          ...materi.sections.map((section) => _SectionCard(section: section)),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final MateriSection section;

  const _SectionCard({required this.section});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.heading,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            section.body,
            style: const TextStyle(
              fontSize: 12.5,
              color: AppColors.text,
              height: 1.65,
            ),
          ),
          if (section.imageIcon != null) ...[
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                color: AppColors.accentLight,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.border),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      section.imageIcon,
                      size: 44,
                      color: AppColors.primary.withValues(alpha: 0.35),
                    ),
                  ),
                  if (section.imageCaption != null)
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppColors.primaryDark.withValues(alpha: 0.75),
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          section.imageCaption!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
