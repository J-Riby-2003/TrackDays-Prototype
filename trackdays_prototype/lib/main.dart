import 'dart:async';
import 'package:flutter/material.dart';
import 'package:launchpad_prototype/pages/app_shell.dart';

Future<void> main() async {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(navigatorKey: _navigatorKey, home: AppShell());
  }
}
