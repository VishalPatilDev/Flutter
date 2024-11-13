import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
