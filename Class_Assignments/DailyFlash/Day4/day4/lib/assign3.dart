import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State<Assign3> createState() => _Assign3State();
}

class _Assign3State extends State<Assign3> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: count >= 1
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Vishal"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.person)],
                  )
                ],
              ),
            )
          : null,
    );
  }
}
