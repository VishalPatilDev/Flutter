import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Containers",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Container(width: 200, height: 200, color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
