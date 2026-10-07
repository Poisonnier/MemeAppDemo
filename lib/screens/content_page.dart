// Import Flutter Material Design package
import 'package:flutter/material.dart';

// Import our reusable bottom navigation bar
import '../widgets/bottom_nav.dart';

/// Secondary Content Page (Route: '/content')
/// Explains what MemeApp is all about with centered text.
class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar displaying page title
      appBar: AppBar(
        title: const Text('About MemeApp'),
      ),

      // Basic empty page with centered explanation text
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'About MemeApp:\n\nThis app is a mockup project designed to demonstrate how named routes, screen redirection, and clean folder structure work in Flutter using a bottom navigation bar.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF0F172A),
              height: 1.6,
            ),
          ),
        ),
      ),

      // Bottom Navigation Bar with Content selected (index 1)
      bottomNavigationBar: const BottomNav(currentIndex: 1),
    );
  }
}
