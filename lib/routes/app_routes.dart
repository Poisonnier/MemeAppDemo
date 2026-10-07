// Import Flutter Material package for WidgetBuilder and route definitions
import 'package:flutter/material.dart';

// Import all screen pages for route mapping
import '../screens/home_page.dart';
import '../screens/content_page.dart';
import '../screens/dev_meme_page.dart';
import '../screens/cat_meme_page.dart';
import '../screens/student_meme_page.dart';

/// Central class managing all named route strings and the application route map.
class AppRoutes {
  // 1. Route Name Constants (prevents typos when calling Navigator)
  static const String home = '/';
  static const String content = '/content';
  static const String devMeme = '/dev-meme';
  static const String catMeme = '/cat-meme';
  static const String studentMeme = '/student-meme';

  // 2. Routes Map: Connects each route string to its screen widget
  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const HomePage(),
        content: (context) => const ContentPage(),
        devMeme: (context) => const DevMemePage(),
        catMeme: (context) => const CatMemePage(),
        studentMeme: (context) => const StudentMemePage(),
      };
}
