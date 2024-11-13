import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
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
