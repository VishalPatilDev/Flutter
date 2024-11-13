import 'package:flutter/material.dart';

class Assign2 extends StatelessWidget {
  const Assign2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.red, width: 3),
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: const Text("Button"),
          ),
        ),
      ),
    );
  }
}
