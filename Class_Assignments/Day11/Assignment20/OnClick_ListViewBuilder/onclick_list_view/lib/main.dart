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
  // List<String> myList = [
  //   "https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_640.jpg",
  //   "https://t3.ftcdn.net/jpg/05/35/47/38/360_F_535473874_OWCa2ohzXXNZgqnlzF9QETsnbrSO9pFS.jpg",
  //   "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="
  // ];
  // List strList = [imageList[0],];
  // int index = 0;
  List myList = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("Listview Builder Demo"),
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Text("$index"),
              //child:Text("$(myList[index])")
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              myList.add(count);
            });
          },
          child: const Text("Add"),
        ),
      ),
    );
  }
}
