import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 209, 220, 226)),
              ),
            )
          ],
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.amber.shade200),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.red.shade200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(color: Colors.green.shade200),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.purple.shade200),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue.shade200),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
