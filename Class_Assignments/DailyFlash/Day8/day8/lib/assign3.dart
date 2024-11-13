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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16))),
                height: 180,
                width: 120,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                height: 180,
                width: 120,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                height: 180,
                width: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
