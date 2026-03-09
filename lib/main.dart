import 'package:flutter/material.dart';
import 'package:student_wallet/features/navigation/screens/main_navigation_screen.dart';

void main() {
  runApp(const StudentDashboardApp());
}

class StudentDashboardApp extends StatelessWidget {
  const StudentDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4B39EF),
        scaffoldBackgroundColor: const Color(0xFFF1F4F8),
        fontFamily: 'Roboto',
      ),
      home: const MainNavigationScreen(),
    );
  }
}