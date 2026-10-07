// Import Flutter Material Design package
import 'package:flutter/material.dart';

// Import our reusable bottom navigation bar
import '../widgets/bottom_nav.dart';

/// Default Home Page (Route: '/')
/// Displays the welcome text in the center and the bottom navigation bar.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar displaying page title
      appBar: AppBar(
        title: const Text('Home Page'),
      ),

      // Basic empty page with centered text
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Welcome to MemeApp, I guess?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0F172A),
              height: 1.4,
            ),
          ),
        ),
      ),

      // Bottom Navigation Bar with Home selected (index 0)
      bottomNavigationBar: const BottomNav(currentIndex: 0),
    );
  }
}
