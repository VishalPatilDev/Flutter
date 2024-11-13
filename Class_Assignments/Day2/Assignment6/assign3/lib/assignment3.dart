import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  //Variable
  int selectedIndex = 0;
  //List of Images
  final List<String> imageList = [
    "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxvJKpIUiRJvol8zRZGPzpwaldwHcLwh_PD7m95OyGzQ&s",
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk="
  ];
  @override
  Widget build(BuildContext context) {
    void showNextImage() {
      setState(() {
        selectedIndex++;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Image"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageList[selectedIndex!],
            width: 400,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: showNextImage,
            child: const Text("Next"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: const Text("Reset"),
          ),
        ],
      )),
    );
  }
}
