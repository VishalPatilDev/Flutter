import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Employee(empName: "Vishal", empId: 1);
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return Project(projectName: "HealthCare", devType: "Backend Dev");
        }),
      ],
      child: MaterialApp(
        home: MainApp(),
      ),
    );
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
        title: const Text("MultiProviders"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Employee>(context).empName),
          const SizedBox(
            height: 20,
          ),
          Text("${Provider.of<Employee>(context).empId}"),
          const SizedBox(
            height: 20,
          ),
          Text(Provider.of<Project>(context).projectName),
          const SizedBox(
            height: 20,
          ),
          Text(Provider.of<Project>(context).devType),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Project>(context, listen: false)
                    .changeProject("ML", "FrontEnd dev");
              },
              child: const Text("Change Project")),
        ],
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  Employee({required this.empName, required this.empId});
}

class Project extends ChangeNotifier {
  String projectName;
  String devType;
  Project({required this.projectName, required this.devType});

  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
