import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/gallery_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/44 1.png"),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 440.0, left: 44),
              child: Container(
                width: 314,
                height: 132,
                child: Text(
                  "Dancing between The shadows \nOf rhythm ",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 261,
              height: 47,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 46, 0, 1),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(19, 19, 19, 1),
                    )),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 261,
              height: 47,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(19, 19, 19, 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue with Email",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 46, 0, 1),
                    )),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 92.0),
              child: Container(
                  width: 300,
                  height: 40,
                  child: Opacity(
                    opacity: 0.4,
                    child: Text(
                      "by continuing you agree to terms \nof services and  Privacy policy",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(203, 200, 200, 1),
                      )),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
