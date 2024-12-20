import 'package:expense_manager/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expense Manager',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

