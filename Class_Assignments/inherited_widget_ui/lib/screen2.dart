import 'package:flutter/material.dart';

import 'main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    SharedData sharedDataobj = SharedData.of(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue.shade200),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child: Text("ID : ${sharedDataobj.modelClassobj.id}"))),
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue.shade200),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child:
                          Text("Name : ${sharedDataobj.modelClassobj.name}"))),
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue.shade200),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                          "Username : ${sharedDataobj.modelClassobj.username}"))),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 128, 107, 221),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add Skills ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SkillPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  final skillcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List skillList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: skillcontroller,
                decoration: InputDecoration(
                  hintText: "Add Skills",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 128, 107, 221),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  setState(() {
                    skillList.add(skillcontroller.text);
                  });
                },
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                          itemCount: skillList.length,
                          itemBuilder: (context, index) {
                            return Center(
                                child: Text(
                              skillList[index],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ));
                          })))
            ],
          ),
        ),
      ),
    );
  }
}
