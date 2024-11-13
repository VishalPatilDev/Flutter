import 'package:flutter/material.dart';

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State<Assign4> createState() => _Assign4State();
}

class _Assign4State extends State<Assign4> {
  final _nameEditingController = TextEditingController();
  final _collageNameEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List nameList = [];
  List collegeList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameEditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _collageNameEditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _formKey.currentState!.validate();
                      nameList.add(_nameEditingController.text);
                      collegeList.add(_collageNameEditingController.text);
                    });
                    _nameEditingController.clear();
                    _collageNameEditingController.clear();
                  },
                  child: Text("Submit"),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: nameList.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Name : ${nameList[index]}"),
                                Text("College Name : ${collegeList[index]}"),
                              ],
                            ),
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
