import 'package:flutter/material.dart';

class DispContainer extends StatefulWidget {
  const DispContainer({super.key});

  @override
  State<DispContainer> createState() => _DispContainerState();
}

class _DispContainerState extends State<DispContainer> {
  static List<String> imageList = [
    "https://cdn.pixabay.com/photo/2020/01/26/20/14/computer-4795762_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/02/08/20/05/futuristic-2049960_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/01/26/18/21/matrix-3109378_1280.jpg",
    "https://images.pexels.com/photos/3861976/pexels-photo-3861976.jpeg?auto=compress&cs=tinysrgb&w=800",
  ];
  List<String> strList = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Core2Web"),
        ),
        body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                strList[index],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              strList.add(imageList[count]);
            });
          },
        ),
      ),
    );
  }
}
