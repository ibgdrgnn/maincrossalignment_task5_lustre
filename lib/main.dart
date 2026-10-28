import 'package:flutter/material.dart';

import 'screens/alignment_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: const Color(0xFFFFF7FF),
        useMaterial3: true,
      ),
      home: const AlignmentHomePage(),
    );
  }
}
