import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List colorList = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1)
  ];
  // int count = -1;

  // Color getColor() {
  //   count++;
  //   if (count == 0) {
  //     return colorList[0];
  //   }
  //   if (count == 1) {
  //     return colorList[1];
  //   }
  //   if (count == 2) {
  //     return colorList[2];
  //   }
  //   if (count == 3) {
  //     return colorList[3];
  //   } else {
  //     return colorList[4];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do-list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 500,
        width: 320,
        child: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 112,
              width: 330,
              child: Card(
                elevation: 5,
                color: colorList[index],
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: SizedBox(
                                height: 23.79,
                                width: 19.07,
                                child: Image.network(
                                    'https://pixsector.com/cache/517d8be6/av5c8336583e291842624.png'),
                              ),
                            ),

                            // Row(
                            //   children: [
                            //     Text(
                            //       "10 July 2023",
                            //       style: GoogleFonts.quicksand(
                            //           textStyle: TextStyle(
                            //               fontWeight: FontWeight.w500,
                            //               fontSize: 10)),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 20,
                              width: 250,
                              child: Text(
                                "Lorem Ipsum is simply setting industry",
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 50,
                              width: 250,
                              child: Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Text(
                            "10 July 2023",
                            style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10)),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 13,
                            width: 13,
                            child: Icon(
                              Icons.edit_outlined,
                              size: 15,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 13,
                            width: 13,
                            child: Icon(
                              Icons.delete_outline_outlined,
                              size: 15,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
