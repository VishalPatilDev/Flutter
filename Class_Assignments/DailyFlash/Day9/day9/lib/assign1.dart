import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget {
  const Assign1({super.key});

  @override
  State<Assign1> createState() => _Assign1State();
}

class _Assign1State extends State<Assign1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.orange,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.amber,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
