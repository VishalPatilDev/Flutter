import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State<Assign3> createState() => _Assign3State();
}

class _Assign3State extends State<Assign3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        // foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            height: 180,
            width: 110,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN5xSXTex01lOO51eniPXYx7Pp5gEIICIf4d_3s8KDXlnKZR4HbLBNMORP8FTl2fDTNw0&usqp=CAU'),
                ),
                const SizedBox(
                  width: 70,
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(8),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: const Center(child: Text('Core2Web'))),
                    Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: const Center(child: Text('Incubators'))),
                    Container(
                        margin: EdgeInsets.all(8),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: const Center(child: Text('Biencaps'))),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(), shape: BoxShape.circle),
                    child: const Icon(
                      Icons.check,
                      size: 30,
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
