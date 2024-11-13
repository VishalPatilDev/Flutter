import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                _isClicked = !_isClicked;
              });
            },
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  border: Border.all(
                      color: _isClicked ? Colors.green : Colors.red)),
            )),
      ),
    );
  }
}
