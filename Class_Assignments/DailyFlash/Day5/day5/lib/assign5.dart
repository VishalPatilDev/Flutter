import 'package:flutter/material.dart';

class Assign5 extends StatelessWidget {
  const Assign5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment5'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.network(
              'https://st3.depositphotos.com/1030334/18402/i/450/depositphotos_184025826-stock-photo-man-in-yellow-jaket-in.jpg',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
