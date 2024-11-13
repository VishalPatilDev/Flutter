import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Card(
            // elevation: 15,
            child: Image.asset(
              'assets/images/272cf15a08dcca3bd22e258e7635e9c2 1.png',
              // color: Colors.black,
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 475.0, left: 94),
                child: Container(
                  child: Text(
                    "Alone in the Abyss",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Container(
                  child: Text(
                    "Youlakou",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
