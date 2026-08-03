import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'theme/app_text_styles.dart';
import 'data/app_data.dart';
import 'screens/home_page.dart';
import 'screens/materi_page.dart';
import 'screens/quiz_page.dart';
import 'screens/file_list_page.dart';

void main() {
  runApp(const EsdAccountingApp());
}

class EsdAccountingApp extends StatelessWidget {
  const EsdAccountingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESD for Accounting',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = -1;

  static const List<String> _titles = [
    'Perangkat',
    'Materi',
    'Project',
    'Quiz',
    'Siklus',
  ];

  void _onNavigate(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      const FileListPage(
        title: 'Perangkat Pembelajaran',
        subtitle:
            'Kumpulan dokumen perangkat pembelajaran akuntansi berbasis ESD yang dapat diunduh dan dipelajari.',
        items: perangkatList,
      ),
      const MateriPage(),
      const FileListPage(
        title: 'Project Tugas',
        subtitle:
            'Daftar project dan lembar kerja yang harus diselesaikan peserta didik.',
        items: projectList,
      ),
      const QuizPage(),
      const FileListPage(
        title: 'Siklus Akuntansi',
        subtitle:
            'Akses materi, video, dan lembar kerja seputar siklus akuntansi.',
        items: siklusList,
        showButtons: false,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.eco, size: 18),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ESD for Accounting',
                    style: AppTextStyles.onPrimaryTitle.copyWith(fontSize: 15),
                  ),
                  Text(
                    _currentIndex == -1 ? '' : _titles[_currentIndex],
                    style: AppTextStyles.onPrimaryLabel.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            tooltip: 'Beranda',
            onPressed: () => setState(() => _currentIndex = -1),
          ),
        ],
      ),
      body: _currentIndex == -1
          ? HomePage(onNavigate: _onNavigate)
          : IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex == -1 ? 0 : _currentIndex,
        onDestinationSelected: _onNavigate,
        backgroundColor: AppColors.card,
        indicatorColor: AppColors.accentLight,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.devices_outlined),
            selectedIcon: Icon(Icons.devices, color: AppColors.primary),
            label: 'Perangkat',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book, color: AppColors.primary),
            label: 'Materi',
          ),
          NavigationDestination(
            icon: Icon(Icons.description_outlined),
            selectedIcon: Icon(Icons.description, color: AppColors.primary),
            label: 'Project',
          ),
          NavigationDestination(
            icon: Icon(Icons.assignment_outlined),
            selectedIcon: Icon(Icons.assignment, color: AppColors.primary),
            label: 'Quiz',
          ),
          NavigationDestination(
            icon: Icon(Icons.sync_alt),
            selectedIcon: Icon(Icons.sync_alt, color: AppColors.primary),
            label: 'Siklus',
          ),
        ],
      ),
    );
  }
}
