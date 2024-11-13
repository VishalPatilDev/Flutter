import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UxDesign(),
    );
  }
}

class UxDesign extends StatefulWidget {
  const UxDesign({super.key});

  @override
  State<UxDesign> createState() => _UxDesignState();
}

class _UxDesignState extends State<UxDesign> {
  List titleList = [
    'UX Designer from Scratch.',
    'Design Thinking The Beginner'
  ];
  List imageList = [
    'assets/images/7010826_3255307.png',
    'assets/images/Objects.png'
  ];
  List colorList = [
    Color.fromRGBO(197, 4, 98, 1),
    Color.fromRGBO(80, 3, 112, 1),
    Color.fromRGBO(0, 77, 228, 1),
    Color.fromRGBO(1, 47, 135, 1),
  ];
  final Widget svg = SvgPicture.asset('assets/images/7010826_3255307.svg');
  final Widget svg2 = SvgPicture.asset('assets/images/Group.svg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(205, 218, 218, 1),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              width: 320,
              height: 26,
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 26,
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    size: 26,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 38),
              child: Text(
                "Welcome to New",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 26.98)),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 38),
              child: Text(
                "Educourse",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 37)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 57,
                width: 320,
                child: const TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter your Keyword',
                      suffixIcon: Icon(Icons.search_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Course For You',
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          itemCount: imageList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              height: 242,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        colorList[index],
                                        colorList[index],
                                        colorList[index],
                                        colorList[index]
                                      ])),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 20),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      titleList[index],
                                      style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 17)),
                                    ),
                                    Image.asset(imageList[index])
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )

                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         padding: const EdgeInsets.all(9),
                      //         decoration: const BoxDecoration(
                      //             borderRadius:
                      //                 BorderRadius.all(Radius.circular(20)),
                      //             gradient: LinearGradient(
                      //                 begin: Alignment.topCenter,
                      //                 colors: [
                      //                   Color.fromRGBO(197, 4, 98, 1),
                      //                   Color.fromRGBO(80, 3, 112, 1)
                      //                 ])),
                      //         height: 242,
                      //         width: 190,
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(8.0),
                      //           child: Column(
                      //             children: [
                      //               Text(
                      //                 "UX Designer from Scratch.",
                      //                 style: GoogleFonts.jost(
                      //                     textStyle: const TextStyle(
                      //                         fontWeight: FontWeight.w500,
                      //                         color: Color.fromRGBO(
                      //                             255, 255, 255, 1),
                      //                         fontSize: 17)),
                      //               ),
                      //               // const SizedBox(
                      //               //   height: 5,
                      //               // ),
                      //               svg,
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         width: 20,
                      //       ),
                      //       Container(
                      //         padding: const EdgeInsets.all(9),
                      //         decoration: const BoxDecoration(
                      //             borderRadius:
                      //                 BorderRadius.all(Radius.circular(20)),
                      //             gradient: LinearGradient(
                      //                 begin: Alignment.topCenter,
                      //                 colors: [
                      //                   Color.fromRGBO(0, 77, 228, 1),
                      //                   Color.fromRGBO(1, 47, 135, 1),
                      //                 ])),
                      //         height: 242,
                      //         width: 190,
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(8.0),
                      //           child: Column(
                      //             children: [
                      //               Text(
                      //                 "Design Thinking The Beginner",
                      //                 style: GoogleFonts.jost(
                      //                     textStyle: const TextStyle(
                      //                         fontWeight: FontWeight.w500,
                      //                         color: Color.fromRGBO(
                      //                             255, 255, 255, 1),
                      //                         fontSize: 17)),
                      //               ),
                      //               const SizedBox(
                      //                 height: 10,
                      //               ),
                      //               svg2,
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      ,
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Course By Category",
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 18)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    height: 36,
                                    width: 36,
                                    child: Image.asset(
                                      'assets/images/image1.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "UI/UX",
                                    style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    height: 36,
                                    width: 36,
                                    child: Image.asset(
                                      'assets/images/image2.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "VISUAL",
                                    style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    height: 36,
                                    width: 36,
                                    child: Image.asset(
                                      'assets/images/image3.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "ILLUSTRATON",
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    height: 36,
                                    width: 36,
                                    child: Image.asset(
                                      'assets/images/image4.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "PHOTO",
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
