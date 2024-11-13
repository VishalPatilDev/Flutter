import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DecorContainer(),
    );
  }
}

class DecorContainer extends StatefulWidget {
  const DecorContainer({super.key});

  @override
  State<DecorContainer> createState() => _DecorContainerState();
}

class _DecorContainerState extends State<DecorContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(162, 154, 250, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Decoration container"),
        backgroundColor: const Color.fromRGBO(112, 101, 230, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromRGBO(250, 250, 251, 1)),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(46),
            // ),
            color: const Color.fromRGBO(255, 255, 255, 1),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 3),
                  blurRadius: 5,
                  spreadRadius: 2),
            ],
          ),
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
            width: 5,
            height: 5,
            scale: 3,
          ),
        ),
      ),
    );
  }
}
