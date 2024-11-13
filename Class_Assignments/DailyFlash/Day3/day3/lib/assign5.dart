import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.blue.shade100,
            shape: BoxShape.circle,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Red"),
              // const SizedBox(
              //   width: 90,
              // ),
              Column(
                children: [Text('|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|')],
              ),
              // const SizedBox(
              //   width: 20,
              // ),
              Text("Blue")
            ],
          ),
        ),
      ),
    );
  }
}
