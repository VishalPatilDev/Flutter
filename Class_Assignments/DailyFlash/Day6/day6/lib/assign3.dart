import 'package:flutter/material.dart';

class Assign3 extends StatelessWidget {
  const Assign3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 120,
                color: Colors.red,
              ),
              const SizedBox(
                height: 250,
              ),
              Container(
                height: 100,
                width: 120,
                color: Colors.amber,
              )
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 120,
                color: Colors.purple,
              ),
              const SizedBox(
                height: 250,
              ),
              Container(
                height: 100,
                width: 120,
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}
