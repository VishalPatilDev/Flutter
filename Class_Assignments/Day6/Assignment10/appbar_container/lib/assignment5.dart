import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Images",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              width: 150,
              height: 150,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              width: 150,
              height: 150,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
