import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../theme/app_text_styles.dart';
import '../data/client_content.dart';
import '../components/app_cards.dart';
import '../components/app_typography.dart';

class HomePage extends StatefulWidget {
  final void Function(int index)? onNavigate;

  const HomePage({super.key, this.onNavigate});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _newsController = PageController(viewportFraction: 0.92);
  int _newsIndex = 0;
  Timer? _autoSlideTimer;

  @override
  void initState() {
    super.initState();
    if (newsList.isEmpty) return;
    _autoSlideTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (!mounted || !_newsController.hasClients) return;
      final next = (_newsIndex + 1) % newsList.length;
      _newsController.animateToPage(
        next,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _autoSlideTimer?.cancel();
    _newsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildHeroCard(),
        const SizedBox(height: 20),
        const SectionTitle(title: 'Menu Utama'),
        const SizedBox(height: 10),
        _buildMateriCard(),
        const SizedBox(height: 12),
        _buildMenuGrid(),
        const SizedBox(height: 20),
        const SectionTitle(title: 'News Highlight'),
        if (newsList.isNotEmpty) ...[
          const SizedBox(height: 10),
          _buildNewsSlider(),
          const SizedBox(height: 8),
          _buildNewsIndicator(),
        ],
        const SizedBox(height: 20),
        _buildGreenManufacturingSection(),
      ],
    );
  }

  Widget _buildHeroCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.eco, color: Colors.white, size: 22),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Welcome to ESD Smart for Accounting',
                  style: AppTextStyles.onPrimaryTitle,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Count Today, Sustain Tomorrow',
            style: AppTextStyles.onPrimaryBody,
          ),
        ],
      ),
    );
  }

  Widget _buildMateriCard() {
    return _MenuCardBig(
      icon: Icons.menu_book,
      title: 'Materials',
      onTap: () => widget.onNavigate?.call(1),
    );
  }

  Widget _buildMenuGrid() {
    final items = [
      _MiniMenuData(Icons.assignment, 'Quiz', 3),
      _MiniMenuData(Icons.sync_alt, 'Case Study', 4),
      _MiniMenuData(Icons.description, 'Project', 0),
      _MiniMenuData(Icons.handyman, 'Teaching Tools', 2),
    ];

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.55,
      children: items.map((item) {
        return _MiniMenuCard(
          data: item,
          onTap: () => widget.onNavigate?.call(item.navIndex),
        );
      }).toList(),
    );
  }

  Widget _buildNewsSlider() {
    return SizedBox(
      height: 280,
      child: PageView.builder(
        controller: _newsController,
        itemCount: newsList.length,
        onPageChanged: (i) => setState(() => _newsIndex = i),
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _NewsCard(news: news),
          );
        },
      ),
    );
  }

  Widget _buildNewsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(newsList.length, (i) {
        final active = i == _newsIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: active ? 20 : 7,
          height: 7,
          decoration: BoxDecoration(
            color: active ? AppColors.primary : AppColors.border,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  Widget _buildGreenManufacturingSection() {
    return const SectionTitle(title: 'Green Manufacturing');
  }
}

class _MenuCardBig extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const _MenuCardBig({required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(16),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBox(icon: icon, size: 38, iconSize: 20),
              const Icon(Icons.chevron_right, color: AppColors.textDim),
            ],
          ),
          const SizedBox(height: 10),
          Text(title, style: AppTextStyles.title),
        ],
      ),
    );
  }
}

class _MiniMenuData {
  final IconData icon;
  final String title;
  final int navIndex;

  const _MiniMenuData(this.icon, this.title, this.navIndex);
}

class _MiniMenuCard extends StatelessWidget {
  final _MiniMenuData data;
  final VoidCallback? onTap;

  const _MiniMenuCard({required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(12),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconBox(icon: data.icon, size: 30, iconSize: 16),
          const Spacer(),
          Text(data.title, style: AppTextStyles.titleSmall),
        ],
      ),
    );
  }
}

class _NewsCard extends StatelessWidget {
  final NewsItem news;

  const _NewsCard({required this.news});

  Future<void> _openNews() async {
    await launchUrl(Uri.parse(news.url), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        side: const BorderSide(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: _openNews,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.asset(news.imageAsset, fit: BoxFit.cover),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  news.title,
                  style: AppTextStyles.bodyMedium.copyWith(height: 1.3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
