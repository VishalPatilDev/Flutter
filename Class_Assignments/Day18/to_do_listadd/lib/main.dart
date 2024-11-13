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
  List nameList = [];
  List compList = [];
  List locList = [];
  final nameController = TextEditingController();
  final compController = TextEditingController();
  final locController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-do-list",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  hintText: 'Enter Name : ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: compController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  hintText: 'Enter Company Name : ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: locController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  hintText: 'Enter Location : ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nameList.add(nameController.text);
                  compList.add(compController.text);
                  locList.add(locController.text);
                });
              },
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  "Dream Company",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: ListView.builder(
                    itemCount: nameList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blue.shade100,
                        child: Column(
                          children: [
                            Text("Name : ${nameList[index]}"),
                            Text("Company  : ${compList[index]}"),
                            Text("Location : ${locList[index]}"),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nameController.clear();
          compController.clear();
          locController.clear();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
