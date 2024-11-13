import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) {
          return Company(compName: "Google", empCount: 250);
        },
        child: MaterialApp(
          home: MainApp(),
        ));
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Provider.of<Company>(context).compName),
          const SizedBox(
            height: 30,
          ),
          Text("${Provider.of<Company>(context).empCount}"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Provider.of<Company>(context, listen: false).compName =
                    'NVIDIA';
                Provider.of<Company>(context, listen: false).empCount++;
              });
            },
            child: Text("Change Compnay Name"),
          ),
        ],
      ),
    );
  }
}

class Company {
  String compName;
  int empCount;
  Company({required this.compName, required this.empCount});
}
