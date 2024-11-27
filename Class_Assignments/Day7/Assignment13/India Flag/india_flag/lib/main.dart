import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink.shade50,
        appBar: AppBar(
          title: const Text("India Flag"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 5,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.white,
                    child: Image.network(
                        "https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-vector-1024x1024.png"),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
