import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 6, 133, 1),
      body: Container(
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile photo.png'),
            ),
            Column(
              children: [Text("Abdull")],
            ),
          ],
        ),
      ),
    );
  }
}
