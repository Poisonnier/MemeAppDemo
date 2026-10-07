// Import Flutter Material Design package
import 'package:flutter/material.dart';

// Import our reusable bottom navigation bar
import '../widgets/bottom_nav.dart';

/// Developer Meme Page (Route: '/dev-meme')
/// Displays a basic centered text meme and the bottom navigation bar.
class DevMemePage extends StatelessWidget {
  const DevMemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar displaying page title
      appBar: AppBar(
        title: const Text('Developer Meme'),
      ),

      // Basic empty page with just one centered text meme
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            '💻 Developer Meme:\n\n"It works on my machine,\nso we are shipping my machine to production!"',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF0F172A),
              height: 1.5,
            ),
          ),
        ),
      ),

      // Bottom Navigation Bar with Dev selected (index 2)
      bottomNavigationBar: const BottomNav(currentIndex: 2),
    );
  }
}
