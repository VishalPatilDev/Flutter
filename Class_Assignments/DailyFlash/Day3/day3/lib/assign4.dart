import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(color: Colors.blueAccent, boxShadow: [
            BoxShadow(color: Colors.red, offset: Offset(0, -5), blurRadius: 3),
          ]),
        ),
      ),
    );
  }
}
