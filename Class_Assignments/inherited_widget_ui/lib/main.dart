import 'package:flutter/material.dart';

import 'screen2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
      modelClassobj: EmpModelClass(),
      child: const MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SharedData sharedDataobj = SharedData.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 86),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 17),
                  margin: const EdgeInsets.only(top: 25, bottom: 11),
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 18,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: TextFormField(
                    controller: idcontroller,
                    decoration: InputDecoration(
                      hintText: "id",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 49,
                  padding: const EdgeInsets.only(left: 17),
                  margin: const EdgeInsets.only(top: 11, bottom: 15),

                  // height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 18,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 49,
                  padding: const EdgeInsets.only(left: 17),
                  margin: const EdgeInsets.only(top: 11, bottom: 15),

                  // height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 18,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: "name",
                      border: InputBorder.none,
                    ),
                  ),
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
                      "Sign In ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    sharedDataobj.modelClassobj.id =
                        int.parse(idcontroller.text);
                    sharedDataobj.modelClassobj.name = namecontroller.text;
                    sharedDataobj.modelClassobj.username =
                        usernameController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmpModelClass {
  int? id;
  String? name;
  String? username;

  EmpModelClass({this.id, this.name, this.username});
}

class SharedData extends InheritedWidget {
  final EmpModelClass modelClassobj;
  const SharedData({
    super.key,
    required this.modelClassobj,
    required super.child,
  });

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return modelClassobj != oldWidget.modelClassobj;
  }
}
