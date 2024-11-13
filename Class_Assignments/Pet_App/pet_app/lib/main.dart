import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/dashboard_screen.dart';
import 'package:pet_app/login_screen.dart';
import 'package:pet_app/notifications_screen.dart';
import 'package:pet_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/dashboard_screen': (context) => const DashBoard(),
        '/notifications_screen': (context) => const Notification_Screen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              displayMedium: GoogleFonts.poppins(
                  textStyle: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
      )))),
      home: const SplashScreen(),
    );
  }
}
