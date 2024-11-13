import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  String compName = "Google";
  int empCount = 250;
  @override
  Widget build(BuildContext context) {
    return Company(
      compName: compName,
      empCount: empCount,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("InheritedWidget Example"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CompanyData(),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    compName = "Nvidia";
                    empCount++;
                  });
                },
                child: Text("Change CompName"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Company extends InheritedWidget {
  final String compName;
  final int empCount;
  const Company(
      {super.key,
      required this.compName,
      required this.empCount,
      required super.child});
  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override
  bool updateShouldNotify(Company old) {
    return compName != old.compName || empCount != old.empCount;
  }
}

class CompanyData extends StatelessWidget {
  const CompanyData({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Company.of(context).compName),
        const SizedBox(
          width: 20,
        ),
        Text("${Company.of(context).empCount}")
      ],
    );
  }
}
