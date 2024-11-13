import 'package:flutter/material.dart';

class ContainerDemo2 extends StatefulWidget {
  const ContainerDemo2({super.key});

  @override
  State<ContainerDemo2> createState() => _ContainerDemo2State();
}

class _ContainerDemo2State extends State<ContainerDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.blue,
              border: Border(left: BorderSide(width: 5, color: Colors.red))),
          child: const Text("Container"),
        ),
      ),
    );
  }
}
