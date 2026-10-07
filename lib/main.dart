// ==============================================================================
// FILE: lib/main.dart
// PURPOSE: Main application entry point for the MemeApp project.
// CONFIGURES: MaterialApp, Theme, Initial Route, and Named Routes Map.
// ==============================================================================

// Import core Flutter Material Design package
import 'package:flutter/material.dart';

// Import centralized route definitions
import 'routes/app_routes.dart';

/// Starting entry point of the Flutter application
void main() {
  runApp(const MemeApp());
}

/// Root widget of the application
class MemeApp extends StatelessWidget {
  const MemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF0F172A),
          titleTextStyle: TextStyle(
            color: Color(0xFF0F172A),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // 1. Initial starting route (maps to '/')
      initialRoute: AppRoutes.home,
      // 2. Named routes dictionary
      routes: AppRoutes.routes,
    );
  }
}
