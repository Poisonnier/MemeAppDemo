// Import Flutter Material Design package
import 'package:flutter/material.dart';

// Import our reusable bottom navigation bar
import '../widgets/bottom_nav.dart';

/// Cat Meme Page (Route: '/cat-meme')
/// Displays a basic centered text meme and the bottom navigation bar.
class CatMemePage extends StatelessWidget {
  const CatMemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar displaying page title
      appBar: AppBar(
        title: const Text('Cat Meme'),
      ),

      // Basic empty page with just one centered text meme
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            '🐱 Cat Meme:\n\n"You have 5 empty chairs,\nbut I choose to sleep on your laptop keyboard."',
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

      // Bottom Navigation Bar with Cat selected (index 3)
      bottomNavigationBar: const BottomNav(currentIndex: 3),
    );
  }
}
