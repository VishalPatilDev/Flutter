import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          backgroundColor: Colors.amber[200],
        ),
        backgroundColor: Colors.grey.shade300,
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCount,
          child: const Text("Add"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (count >= 1)
                  ? Container(height: 500, width: 10, color: Colors.black)
                  : Container(),
              Column(
                children: [
                  (count >= 2)
                      ? Container(height: 50, width: 200, color: Colors.orange)
                      : Container(),
                  (count >= 3)
                      ? Container(
                          height: 50,
                          width: 200,
                          color: Colors.white,
                          child: (count >= 4)
                              ? Image.network(
                                  "https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg")
                              : Container(),
                        )
                      : Container(),
                  (count >= 5)
                      ? Container(
                          height: 50,
                          width: 200,
                          color: Colors.green,
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
