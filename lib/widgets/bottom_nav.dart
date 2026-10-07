// Import Flutter Material Design package for NavigationBar and icons
import 'package:flutter/material.dart';

// Import our route names for redirection
import '../routes/app_routes.dart';

/// Reusable Bottom Navigation Bar containing all page options.
/// Handles redirection between screens using Navigator.pushReplacementNamed().
class BottomNav extends StatelessWidget {
  /// The index of the currently active screen (0 to 4)
  final int currentIndex;

  const BottomNav({
    super.key,
    required this.currentIndex,
  });

  /// Redirection handler called when any navbar destination is tapped
  void _onItemTapped(BuildContext context, int index) {
    // If user taps the already active item, do nothing
    if (index == currentIndex) return;

    // Redirect to the corresponding named route based on the selected index
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, AppRoutes.home);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, AppRoutes.content);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, AppRoutes.devMeme);
        break;
      case 3:
        Navigator.pushReplacementNamed(context, AppRoutes.catMeme);
        break;
      case 4:
        Navigator.pushReplacementNamed(context, AppRoutes.studentMeme);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      // Currently active destination
      selectedIndex: currentIndex,
      // Callback executed when a destination is selected
      onDestinationSelected: (index) => _onItemTapped(context, index),
      elevation: 0,
      backgroundColor: Colors.white,
      indicatorColor: const Color(0xFFE2E8F0),
      destinations: const [
        // 1. Home Destination
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Home',
        ),
        // 2. Another Content Destination
        NavigationDestination(
          icon: Icon(Icons.article_outlined),
          selectedIcon: Icon(Icons.article),
          label: 'Content',
        ),
        // 3. Dev Meme Destination
        NavigationDestination(
          icon: Icon(Icons.code_outlined),
          selectedIcon: Icon(Icons.code),
          label: 'Dev',
        ),
        // 4. Cat Meme Destination
        NavigationDestination(
          icon: Icon(Icons.pets_outlined),
          selectedIcon: Icon(Icons.pets),
          label: 'Cat',
        ),
        // 5. Student Meme Destination
        NavigationDestination(
          icon: Icon(Icons.school_outlined),
          selectedIcon: Icon(Icons.school),
          label: 'Student',
        ),
      ],
    );
  }
}
