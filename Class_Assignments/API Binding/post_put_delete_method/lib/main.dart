import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: deleteEmployeeData,
              child: const Text("Post Employee Data")),
        ),
      ),
    );
  }

  //Post Request

  // void postEmployeeData() async {
  //   Uri url = Uri.parse('https://dummy.restapiexample.com/api/v1/create');
  //   Map<String, String> mapData = {
  //     'name': 'Vishal',
  //     'salary': '20000',
  //     'age': '23'
  //   };
  //   http.Response response = await http.post(url, body: mapData);
  //   log(response.body);
  // }

  //Put Request
  // void updateEmployeeData() async {
  //   Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/21");
  //   Map<String, String> mapData = {
  //     "name": "Kanha",
  //     "salary": "250000",
  //     "age": "23"
  //   };
  //   http.Response response = await http.put(
  //     url,
  //     body: mapData,
  //   );

  //Delete Request
  void deleteEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/5");
    http.Response response = await http.delete(url);
    log(response.body);
  }
}
