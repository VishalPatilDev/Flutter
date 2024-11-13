import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({super.key});

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: const Center(child: Text("Container")),
        ),
      ),
    );
  }
}
