import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "assets/images/unnamed.webp",
      "assets/images/dc2ec5a571974417a5551420a4fb0587.webp",
      "assets/images/images.jpeg",
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.red,
          centerTitle: true,
          title: const Text(
            "Who is Watching ?",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
          ),
          actions: [Icon(Icons.search)],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(100),
              child: Image.asset(imageList[index]),
            );
          },
        ));
  }
}
