import 'package:flutter/material.dart';

class LearnMorePage extends StatelessWidget {
  const LearnMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.account_circle,
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.black,
        title: Image.asset('assets/images/logos_netflix.png'),
        // title: Text(
        //   "Netflix",
        //   style: TextStyle(
        //       color: Colors.red, fontWeight: FontWeight.w700, fontSize: 26),
        // ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "about netflix",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
