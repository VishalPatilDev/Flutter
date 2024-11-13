import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  Map<String, dynamic> empData = {};
  Widget validateMap() {
    if (empData.isNotEmpty) {
      return Row(
        children: [
          Text("Name : ${empData['employee_name']}"),
          Spacer(),
          Text("Salary : ${empData['employee_salary']}")
        ],
      );
    } else {
      return const Center(child: Text("No data found"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: validateMap(),
      //  Row(
      //   children: [
      //     Text("Name : ${empData['employee_name']}"),
      //     Spacer(),
      //     Text("Salary : ${empData['employee_salary']}")
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        child: const Icon(Icons.add),
      ),
    );
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");
    http.Response response = await http.get(url);
    log(response.body);

    var responseData = json.decode(response.body);

    setState(() {
      empData = responseData['data'];
    });
  }
}
