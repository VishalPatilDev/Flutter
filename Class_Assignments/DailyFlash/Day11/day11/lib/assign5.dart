import 'package:flutter/material.dart';

class Assign5 extends StatelessWidget {
  const Assign5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: TextField(
            cursorColor: Colors.red,
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
          ),
        ),
      ),
    );
  }
}
