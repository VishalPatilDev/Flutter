import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          // color: Colors.blue,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 4)),
        ),
      ),
    );
  }
}
