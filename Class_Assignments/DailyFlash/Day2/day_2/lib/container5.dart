import 'package:flutter/material.dart';

class ContainerDemo5 extends StatefulWidget {
  const ContainerDemo5({super.key});

  @override
  State<ContainerDemo5> createState() => _ContainerDemo5State();
}

class _ContainerDemo5State extends State<ContainerDemo5> {
  String text = 'Click Me!';
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              // text = 'Container Tapped';
              tap = !tap;
              tap ? text = "Container Tapped" : text = "Click Me!";
            });
          },
          child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(color: tap ? Colors.blue : Colors.red),
            child: Center(child: Text(text)),
          ),
        ),
      ),
    );
  }
}
