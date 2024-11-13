import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final nameController = TextEditingController();
  final compController = TextEditingController();
  final locController = TextEditingController();
  int count = 0;
  String? name;
  String? compName;
  String? loc;

  Card returnContainer() {
    return Card(
      elevation: 8,
      color: Colors.blue.shade100,
      child: Column(
        children: [
          Text("Name: ${nameController.text}"),
          Text("CompanyName:${compController.text}"),
          Text("location:${locController.text}")
        ],
      ),
    );
  }

  void add() {
    textList.add(nameController.text);
    textList.add(compController);
    textList.add(locController.text);
  }

  List textList = [];
  void initialize() {
    String nameText = nameController.text;
    String compText = compController.text;
    String locText = locController.text;
  }

  void incrementCount() {
    if (count == 1) {
      List formatText = textList[count].add(nameController.text);
      formatText = textList[count].add(compController.text);
      formatText = textList[count].add(locController.text);
    }
  }

  void clearText() {
    nameController.clear();
    compController.clear();
    locController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: clearText,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("To-do-list"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 400,
          width: 300,
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Enter Name :',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: compController,
                decoration: InputDecoration(
                    hintText: 'Company Name :',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: locController,
                decoration: InputDecoration(
                    hintText: 'Location :',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    count++;
                    textList.add(returnContainer());
                  });
                },
                child: Text("Submit"),
              ),
              Container(
                height: 160,
                width: 300,
                child: ListView.builder(
                  itemCount: textList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.all(8),
                      child: count >= 1 ? returnContainer() : Card(),
                      // child: Card(
                      //   elevation: 8,
                      //   color: Colors.blue.shade200,
                      //   child: Column(
                      //     children: [
                      //       Text(nameController.text),
                      //       Text(compController.text),
                      //       Text(locController.text),
                      //     ],
                      //   ),
                      // ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
