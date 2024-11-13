import 'package:flutter/material.dart';

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State<Assign4> createState() => _Assign4State();
}

class _Assign4State extends State<Assign4> {
  final _controller = TextEditingController();
  int count = 0;
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: _controller,
            maxLength: 20,
            onChanged: (value) {
              setState(() {
                count = value.length;
              });
            },
            decoration: InputDecoration(
              labelText: 'Enter your name',
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              counterText: '$count/20',
            ),
          ),
        ),
      ),
    );
  }
}
