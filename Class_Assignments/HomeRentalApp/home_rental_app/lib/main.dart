import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/details_page.dart';
import 'package:home_rental_app/home_screen.dart';
import 'package:home_rental_app/splash_screen.dart';

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
        '/homeScreen': (context) => const HomeScreen(),
        "/detailsPage": (context) => const DetailsPage()
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
