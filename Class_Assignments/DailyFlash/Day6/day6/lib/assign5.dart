import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  bool box1Color = false;
  bool box2Color = false;
  bool box3Color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  box1Color = !box1Color;
                  box2Color = false;
                  box3Color = false;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: box1Color ? Colors.red : Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  box2Color = !box2Color;
                  box3Color = false;
                  box1Color = false;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: box2Color ? Colors.red : Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  box3Color = !box3Color;
                  box1Color = false;
                  box2Color = false;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: box3Color ? Colors.red : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
