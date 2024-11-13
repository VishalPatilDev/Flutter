import 'package:flutter/material.dart';

class ContainerDemo3 extends StatefulWidget {
  const ContainerDemo3({super.key});

  @override
  State<ContainerDemo3> createState() => _ContainerDemo3State();
}

class _ContainerDemo3State extends State<ContainerDemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16)),
              border: Border.all(color: Colors.purple.shade900)),
        ),
      ),
    );
  }
}
