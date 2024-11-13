import 'package:flutter/material.dart';
import 'package:theme_data/textTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayMedium: TextStyle(
              color: Colors.red, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Theme Data",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white)),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            child: Center(
              child: Text(
                "Hello",
                style: myTextStyle(textColor: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
