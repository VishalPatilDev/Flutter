import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});
  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1Color = true;
  bool box2Color = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade100,
        appBar: AppBar(
          title: const Text(
            "Color Box",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple.shade400,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Box 1
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1Color ? Colors.red : Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Box 1 Button
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            box1Color = !box1Color;
                          });
                        },
                        child: const Text("Color Box1")),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                //Box2
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2Color ? Colors.blue : Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Box 2 Button
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            box2Color = !box2Color;
                          });
                        },
                        child: const Text("Color Box1")),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ));
  }
}
