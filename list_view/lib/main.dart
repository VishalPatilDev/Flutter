import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List countList = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // List namesList = ['Vishal', 'Rahul', 'Rohit', 'Aditya', 'Vishwajeet'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: countList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),

              color: Colors.blue,
              height: 50,
              child: Text('$index'),
              // width: 50,
            );
          },
          // itemCount: 5,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                ++count;
                countList.add(count);
              },
            );
          },
          child: Text("add"),
        ),
      ),
    );
  }
}
