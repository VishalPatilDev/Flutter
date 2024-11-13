//Create an AppBar, give an Icon at the start of the appbar, give a title
//in the middle, and at the end add an Icon.

import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.person)],
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
        title: const Text("AppBar"),
        centerTitle: true,
      ),
    );
  }
}
