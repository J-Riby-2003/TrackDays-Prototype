import 'package:flutter/material.dart';
import 'package:launchpad_prototype/components/app_navigation_bar.dart';
import 'package:launchpad_prototype/pages/home_page.dart';
import 'package:launchpad_prototype/pages/profile_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  AppTabs currentTab = AppTabs.home;

  final pages = {AppTabs.home: HomePage(), AppTabs.profile: ProfilePage()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: AppTabs.values.indexOf(currentTab),
        children: pages.values.toList(),
      ),
      bottomNavigationBar: AppNavigationBar(
        currentTab: currentTab,
        onTabSelected: (tab) {
          setState(() => currentTab = tab);
        },
      ),
    );
  }
}
