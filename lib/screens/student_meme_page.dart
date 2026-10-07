// Import Flutter Material Design package
import 'package:flutter/material.dart';

// Import our reusable bottom navigation bar
import '../widgets/bottom_nav.dart';

/// Student Meme Page (Route: '/student-meme')
/// Displays a basic centered text meme and the bottom navigation bar.
class StudentMemePage extends StatelessWidget {
  const StudentMemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar displaying page title
      appBar: AppBar(
        title: const Text('Student Meme'),
      ),

      // Basic empty page with just one centered text meme
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            '🎓 Student Meme:\n\n"Due tomorrow at 11:59 PM\nmeans I start tomorrow at 11:30 PM."',
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

      // Bottom Navigation Bar with Student selected (index 4)
      bottomNavigationBar: const BottomNav(currentIndex: 4),
    );
  }
}
