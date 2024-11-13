import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  width: 150,
                  height: 300,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  width: 150,
                  height: 300,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  width: 150,
                  height: 300,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  width: 150,
                  height: 300,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  width: 150,
                  height: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
