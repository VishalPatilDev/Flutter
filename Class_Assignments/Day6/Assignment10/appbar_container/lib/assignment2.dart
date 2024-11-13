import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Title"),
        backgroundColor: Colors.blue,
        actions: [Icon(Icons.search)],
      ),
    );
  }
}
