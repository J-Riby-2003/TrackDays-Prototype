import 'package:flutter/material.dart';

enum AppTabs { home, profile }

class AppNavigationBar extends StatelessWidget {
  final AppTabs currentTab;
  final ValueChanged<AppTabs> onTabSelected;

  const AppNavigationBar({
    super.key,
    required this.currentTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final tabs = AppTabs.values;

    return NavigationBarTheme(
      data: NavigationBarThemeData(
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: Colors.blue);
          }
          return null;
        }),
      ),

      child: NavigationBar(
        selectedIndex: tabs.indexOf(currentTab),
        indicatorColor: Colors.blue.withAlpha(50),
        onDestinationSelected: (index) {
          onTabSelected(tabs[index]);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
