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
    return const MaterialApp(
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
  void showBottomSheet(){
    showModalBottomSheet(
      
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Create Task",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // enabledBorder: OutlineInputBorder(),
                            labelText: 'Title :',
                            labelStyle: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            // enabledBorder: OutlineInputBorder(),
                            labelText: 'Description :',
                            labelStyle: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // enabledBorder: OutlineInputBorder(),
                            labelText: 'Date :',
                            labelStyle: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Color.fromRGBO(0, 0, 0, 0.1),

                            minimumSize: Size(300, 50),

                            // fixedSize: Size.fromWidth(300),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            backgroundColor: Color.fromRGBO(2, 167, 177, 1),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Submit",
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              });
  }
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
  // BottomSheet bottomSheet() {
  //   showBottomSheet(
  //       context: context,
  //       builder: (builder) {
  //         return Column(
  //           children: [Text("hello")],
  //         );
  //       });
  //   return BottomSheet(
  //       onClosing: () {},
  //       builder: (builder) {
  //         return Column(
  //           children: [
  //             TextField(
  //               decoration: InputDecoration(hintText: 'Enter Task'),
  //             ),
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        // splashColor: Colors.yellow,
        // hoverColor: Colors.red,
        hoverElevation: 4,
        backgroundColor: Color.fromRGBO(0, 139, 148, 1),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(46))),
        onPressed: () {
          
        },
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
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
      body: Padding(

        padding: const EdgeInsets.only(left : 20, right: 20),
        
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
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 2)
                                ], shape: BoxShape.circle, color: Colors.white),
                                child: SizedBox(
                                  height: 23.79,
                                  width: 19.07,
                                  child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
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
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 20,
                              width: 250,
                              child: Text(
                                "Lorem Ipsum is simply setting industry",
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
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
                                    textStyle: const TextStyle(
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
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10)),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 13,
                            width: 13,
                            child: InkWell(
                              onTap: () {
                                print("Edit");
                              },
                              child: const Icon(
                                Icons.edit_outlined,
                                size: 15,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 13,
                            width: 13,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  
                                });
                                print("Delete");
                              },
                              child: const Icon(
                                Icons.delete_outline_outlined,
                                size: 15,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
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
