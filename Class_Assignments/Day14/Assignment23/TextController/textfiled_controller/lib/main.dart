import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Add Names'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  List myList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _namesTextEditingController,
              focusNode: _nameFocusNode,
              // autofocus: true,
              decoration: InputDecoration(
                hintText: "Enter Names",
                prefixIcon: Icon(Icons.supervised_user_circle_outlined),
                // label: Icon(Icons.account_circle_outlined),
                helperText: "Entered Text will be displayed below",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(200),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  ),
                ),
              ),
              cursorColor: Colors.purple,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                print("Value = $value");
              },
              onSubmitted: (value) {
                setState(() {
                  myList.add(value);
                  _namesTextEditingController.clear();
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: myList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          // shape: BoxShape.rectangle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(10, 10),
                              blurRadius: 8,
                            )
                          ]),
                      child: Text(myList[index])),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myList.add(_namesTextEditingController);
            _namesTextEditingController.clear();
          });
        },
        child: const Text("ADD"),
      ),
    );
  }
}
