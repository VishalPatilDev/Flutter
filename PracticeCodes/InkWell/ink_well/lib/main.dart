import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InkWell"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print("Clicked");
            },
            onDoubleTap: () {
              print("Double Clicked");
            },
            onLongPress: () {
              print("Long Pressed");
            },
            splashColor: Colors.blue.shade300,
            radius: 180,
            hoverColor: Colors.red,
            hoverDuration: Duration(seconds: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)),

            // highlightColor: Colors.amber,
            focusColor: Colors.purple,
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
              child: Center(
                child: Text("Click here"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
