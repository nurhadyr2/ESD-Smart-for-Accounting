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
      title: 'ESD Smart for Accounting',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      builder: (context, child) => AppBackground(child: child!),
      home: const MainNavigation(),
    );
  }
}

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.background,
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          opacity: 0.28,
        ),
      ),
      child: child,
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
    'Project',
    'Materials',
    'Teaching Tools',
    'Quiz',
    'Case Study',
  ];

  void _onNavigate(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      const FileListPage(title: 'Project', subtitle: '', items: projectList),
      const MateriPage(),
      const FileListPage(
        title: 'Teaching Tools',
        subtitle: '',
        items: perangkatList,
      ),
      const QuizPage(),
      const FileListPage(
        title: 'Case Study',
        subtitle: '',
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
                    'ESD Smart for Accounting',
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
        backgroundColor: AppColors.primary,
        indicatorColor: Colors.white.withValues(alpha: 0.18),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.description_outlined),
            selectedIcon: Icon(Icons.description, color: Colors.white),
            label: 'Project',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book, color: Colors.white),
            label: 'Materials',
          ),
          NavigationDestination(
            icon: Icon(Icons.devices_outlined),
            selectedIcon: Icon(Icons.devices, color: Colors.white),
            label: 'Teaching Tools',
          ),
          NavigationDestination(
            icon: Icon(Icons.assignment_outlined),
            selectedIcon: Icon(Icons.assignment, color: Colors.white),
            label: 'Quiz',
          ),
          NavigationDestination(
            icon: Icon(Icons.sync_alt),
            selectedIcon: Icon(Icons.sync_alt, color: Colors.white),
            label: 'Case Study',
          ),
        ],
      ),
    );
  }
}
