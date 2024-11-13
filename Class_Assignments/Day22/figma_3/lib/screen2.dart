import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(197, 4, 98, 1),
              Color.fromRGBO(80, 3, 112, 1)
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, top: 20),
              child: Container(
                // height: 100,
                // width: 258.98,
                child: Text(
                  "UX Designer from Scratch.",
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 32.61)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, top: 10),
              child: Container(
                height: 48,
                width: 278,
                child: Text(
                  "Basic guideline & tips & tricks for how to become a UX designer easily.",
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(228, 205, 225, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 34,
                  width: 136,
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                                color: Color.fromRGBO(0, 82, 178, 1)),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Colors.white,
                            )),
                      ),
                      Text(
                        "Author:",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(190, 154, 197, 1))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          "Jenny",
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 24,
                  width: 130,
                  child: Row(
                    children: [
                      Text(
                        "4.8",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "(20 review)",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(190, 154, 197, 1))),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                    height: 70,
                    width: 300,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 40,
                              offset: Offset(0, 8),
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    // padding: EdgeInsets.only(left: 40, right: 40),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 46,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                color: Color.fromRGBO(230, 239, 239, 1)),
                            child: Icon(Icons.play_circle_fill_outlined),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Introduction",
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17))),
                              Text(
                                "Lorem Ipsum is simply dummy text ... ",
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(143, 143, 143, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
