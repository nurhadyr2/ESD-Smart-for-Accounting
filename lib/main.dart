import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'theme/app_text_styles.dart';
import 'data/client_content.dart';
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
        items: caseStudyList,
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
          if (_currentIndex != -1)
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
      bottomNavigationBar: _AppNavigationBar(
        selectedIndex: _currentIndex,
        onSelected: _onNavigate,
      ),
    );
  }
}

class _AppNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const _AppNavigationBar({
    required this.selectedIndex,
    required this.onSelected,
  });

  static const _items = [
    _NavigationItem(Icons.description_outlined, Icons.description, 'Project'),
    _NavigationItem(Icons.menu_book_outlined, Icons.menu_book, 'Materials'),
    _NavigationItem(Icons.devices_outlined, Icons.devices, 'Teaching Tools'),
    _NavigationItem(Icons.assignment_outlined, Icons.assignment, 'Quiz'),
    _NavigationItem(Icons.sync_alt, Icons.sync_alt, 'Case Study'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 72,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(_items.length, (index) {
              final item = _items[index];
              final selected = selectedIndex == index;
              return Expanded(
                child: Semantics(
                  selected: selected,
                  button: true,
                  label: item.label,
                  child: InkWell(
                    onTap: () => onSelected(index),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(2, 6, 2, 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 36,
                            height: 30,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: selected
                                    ? Colors.white.withValues(alpha: 0.18)
                                    : Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                selected ? item.selectedIcon : item.icon,
                                size: 21,
                                color: selected ? Colors.white : Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                          SizedBox(
                            height: 24,
                            child: Center(
                              child: Text(
                                item.label,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppTextStyles.caption.copyWith(
                                  color: selected
                                      ? Colors.white
                                      : Colors.white70,
                                  fontSize: 9.5,
                                  height: 1.2,
                                  fontWeight: selected
                                      ? FontWeight.w700
                                      : FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavigationItem {
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const _NavigationItem(this.icon, this.selectedIcon, this.label);
}
