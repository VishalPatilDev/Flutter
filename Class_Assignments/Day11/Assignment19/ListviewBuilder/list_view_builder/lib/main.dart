import "package:flutter/material.dart";

void main() {
  runApp(const DisplayImages());
}

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});
  @override
  State createState() => _DisplayImagesState();
}

class _DisplayImagesState extends State<DisplayImages> {
  List<String> imagesList = [
    "https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_640.jpg",
    "https://t3.ftcdn.net/jpg/05/35/47/38/360_F_535473874_OWCa2ohzXXNZgqnlzF9QETsnbrSO9pFS.jpg",
    "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Listview Builder Demo"),
        ),
        body: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                imagesList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
