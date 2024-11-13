import 'package:flutter/material.dart';

class Assign5 extends StatelessWidget {
  const Assign5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(5, 5),
              )
            ],
            // borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.green],
              // begin: Alignment.centerLeft,
              // end: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
