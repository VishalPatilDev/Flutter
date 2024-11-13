import 'package:flutter/material.dart';

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State<Assign4> createState() => _Assign4State();
}

class _Assign4State extends State<Assign4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        hoverColor: Colors.red,
        // splashColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
