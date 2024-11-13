import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                  'https://img.freepik.com/premium-photo/lord-mahadev-god-shiv-poster-design-wallpaper-generative-ai_852336-18946.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Image.network(
                  'https://lh3.googleusercontent.com/5lHmN2EhmzKiSlwXuH0YxexUiSS1GBtGlK4uZ10IZk_7HSWJnj0mIUj8ILJjD-3Epz_EyD5DuG5qucyCxfhEINL0=w640-h400-e365-rj-sc0x00ffffff'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Image.network(
                  'https://i.pinimg.com/736x/db/f3/c5/dbf3c5ac9eb82b37e697abf05e1ddfa2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
