import 'package:flutter/material.dart';

class ContainerDemo2 extends StatelessWidget {
  const ContainerDemo2({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                    color: Colors.red, offset: Offset(10, 10), blurRadius: 10)
              ],
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ),
    );
  }
}
