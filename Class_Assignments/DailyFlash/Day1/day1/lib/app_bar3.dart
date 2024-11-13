import 'package:flutter/material.dart';

class AppBarDemo3 extends StatefulWidget {
  const AppBarDemo3({super.key});

  @override
  State<AppBarDemo3> createState() => _AppBarDemo3State();
}

class _AppBarDemo3State extends State<AppBarDemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
      ),
    );
  }
}
