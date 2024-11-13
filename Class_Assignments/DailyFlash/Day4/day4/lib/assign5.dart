import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  bool color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onLongPress: () {
          setState(() {
            color = !color;
          });
        },
        child: FloatingActionButton(
          backgroundColor: color ? Colors.purple : Colors.blue,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
