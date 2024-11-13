// ///Create an AppBar give a color of your choice to the AppBar and then
// add an icon at the start of the AppBar and 3 icons at the end of the
// AppBar.

import 'package:flutter/material.dart';

class AppBarDemo2 extends StatefulWidget {
  const AppBarDemo2({super.key});

  @override
  State<AppBarDemo2> createState() => _AppBarDemo2State();
}

class _AppBarDemo2State extends State<AppBarDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.add),
          Icon(Icons.person),
          Icon(Icons.arrow_right)
        ],
        leading: const Icon(Icons.alarm),
      ),
    );
  }
}
