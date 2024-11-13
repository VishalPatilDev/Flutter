import 'package:appbar_container/assignment1.dart';
import 'package:appbar_container/assignment10.dart';
import 'package:appbar_container/assignment3.dart';
import 'package:appbar_container/assignment5.dart';
import 'package:appbar_container/assignment8.dart';
import 'package:flutter/material.dart';
import 'assignment2.dart';
import 'assignment4.dart';
import 'assignment6.dart';
import 'assignment7.dart';
import 'assignment9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment10(),
    );
  }
}
