import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            // color: Colors.blue.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Time : ${DateFormat(DateFormat.YEAR_MONTH_DAY).format(time)}',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Current Time"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
