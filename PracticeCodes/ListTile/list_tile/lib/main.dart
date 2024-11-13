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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    List colorList = [
      const Color.fromRGBO(250, 232, 232, 1),
      const Color.fromRGBO(232, 237, 250, 1),
      const Color.fromRGBO(250, 249, 232, 1),
      const Color.fromRGBO(250, 232, 250, 1),
      const Color.fromRGBO(250, 232, 232, 1)
    ];
    List imageList = [
      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
      'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'
    ];

    List titleList = [
      'Lorem Ipsum is simply setting industry.',
      'Lorem Ipsum is simply setting industry',
      'Lorem Ipsum is simply setting industry',
      'Lorem Ipsum is simply setting industry',
      'Lorem Ipsum is simply setting industry'
    ];
    List subtitleList = [
      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(46))),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
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
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
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
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
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
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 139, 148, 1))),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
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
                            shape: RoundedRectangleBorder(
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
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          size: 50,
          opticalSize: 46,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: Colors.white,
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              textStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w700)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 500,
            width: 400,
            child: ListView.builder(
              itemCount: colorList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 5,
                    color: colorList[index],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          // isThreeLine: true,
                          leading: const CircleAvatar(
                            foregroundImage: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                          ),
                          title: Text(
                            titleList[index],
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600)),
                          ),
                          subtitle: Text(
                            subtitleList[index],
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, bottom: 8, right: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "10 july 2023",
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500)),
                              ),
                              const Spacer(),
                              InkWell(
                                child: const Icon(
                                  Icons.edit_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: const Icon(
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
        ],
      ),
    );
  }
}
