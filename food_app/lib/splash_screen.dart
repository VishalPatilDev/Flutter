import 'package:flutter/material.dart';
import 'package:food_app/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/736x/1c/fb/2a/1cfb2a87ad2e9917b9e2bfa1e6905a71.jpg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "Get",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Text(
              "Cooking",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Text(
              "Simple way to find Tasty Recipe",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 480,
            ),
            Container(
              height: 54,
              width: 243,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: const Color.fromARGB(255, 209, 101, 62),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "Start Cooking",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
