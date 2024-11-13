import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [BoxShadow(color: Colors.red, blurRadius: 5)]),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              // shadowColor: Colors.red,
            ),
            onPressed: () {},
            child: const Text("Button"),
          ),
        ),
      ),
    );
  }
}
