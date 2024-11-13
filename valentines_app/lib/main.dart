import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List imageList = [
    [
      'assets/images/IMG_20230207_141220.jpg',
      'assets/images/IMG_20230723_185615.jpg',
      'assets/images/IMG-20230215-WA0005.jpg',
      'assets/images/IMG-20230429-WA0005.jpg',
      'assets/images/IMG-20230503-WA0005.jpg',
      'assets/images/Snapchat-1123244766.jpg',
    ],
    [
      'assets/images/IMG_20230723_185258.jpg',
      'assets/images/IMG_20230319_144341.jpg',
      'assets/images/IMG_20230721_231630.jpg',
      'assets/images/IMG_20240207_162607.jpg',
    ],
  ];

  List strList = ['Me and Mine', 'Mine'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.pink, foregroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.pink.shade100,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Happy Valentine's Day",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 600,
                    child: ListView.separated(
                      itemCount: imageList.length,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.pink,
                          thickness: 2,
                        );
                      },
                      itemBuilder: (context, index) {
                        List images = imageList[index];
                        return Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(strList[index],
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.red,
                                    letterSpacing: 2,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline)),
                            Container(
                              height: 400,
                              width: 300,
                              child: ListView.builder(
                                itemCount: images.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    elevation: 10,
                                    shadowColor: Colors.pink.shade700,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 10, sigmaY: 10),
                                          child: Image.asset(images[index])),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
