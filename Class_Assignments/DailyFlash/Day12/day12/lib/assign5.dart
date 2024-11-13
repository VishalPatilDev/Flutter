import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  final _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextField(
          readOnly: true,
          onTap: () {
            DatePickerDialog(
              firstDate: DateTime(2023),
              lastDate: DateTime(2024),
            );
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
          controller: _dateController,
        ),
      ),
    );
  }
}
