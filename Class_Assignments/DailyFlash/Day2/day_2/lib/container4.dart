import 'package:flutter/material.dart';

class ContainerDemo4 extends StatefulWidget {
  const ContainerDemo4({super.key});

  @override
  State<ContainerDemo4> createState() => _ContainerDemo4State();
}

class _ContainerDemo4State extends State<ContainerDemo4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 200, 136, 211),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: const Text("Vishal"),
        ),
      ),
    );
  }
}
