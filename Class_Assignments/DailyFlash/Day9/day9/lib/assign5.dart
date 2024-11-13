import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  bool buttonClick = false;
  final phoneTextEditingController = TextEditingController();
  final nameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        // foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: nameTextEditingController,
                decoration: const InputDecoration(
                    hintText: "Name :",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: phoneTextEditingController,
                decoration: const InputDecoration(
                    hintText: "Phone :",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonClick = true;
                  });
                },
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 20,
              ),
              buttonClick
                  ? Container(
                      width: 270,
                      height: 200,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            nameTextEditingController.text,
                            style: const TextStyle(fontSize: 24),
                          ),
                          Text(
                            phoneTextEditingController.text,
                            style: const TextStyle(fontSize: 24),
                          )
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
