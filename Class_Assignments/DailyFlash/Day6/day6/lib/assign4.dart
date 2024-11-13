import 'package:flutter/material.dart';

class Assign4 extends StatelessWidget {
  const Assign4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          height: 220,
          width: 380,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 100,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 100,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
