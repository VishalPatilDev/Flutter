import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DreamCompany());
  }
}

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});

  @override
  State<DreamCompany> createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State<DreamCompany> {
  TextEditingController nameController = TextEditingController();
  TextEditingController compController = TextEditingController();
  TextEditingController locController = TextEditingController();
  void func() {
    setState(() {
      nameController;
      compController;
      locController;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text(
            "Dream Company",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Enter Name :",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: nameController,
                onSubmitted: (value) => nameController.clear,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  hintText: "Enter CompanyName",
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: compController,
                onSubmitted: (value) => compController.clear,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Enter Location: ",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                controller: locController,
                onSubmitted: (value) => locController.clear,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                onPressed: func,
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const Text(
                            "Dream Company",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text("Name :${nameController.text}"),
                          Text("Company Name :${compController.text}"),
                          Text("Location :${locController.text}"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
