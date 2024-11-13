import 'package:brand_store_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              displayMedium: GoogleFonts.imprima(
                  textStyle: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
      )))),
      home: const HomeScreen(),
    );
  }
}
