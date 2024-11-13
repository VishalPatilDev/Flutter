import 'package:flutter/material.dart';
import 'package:navigator/Screens/screen1.dart';
import 'package:navigator/Screens/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/screen1": (context) => const Screen1(),
        "/screen2": (context) => const Screen2(),
      },
      title: 'Flutter Demo',
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Navigator Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen1");
                  },
                  child: const Text("Screen1")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen2");
                  },
                  child: const Text("Screen2")),
            ],
          ),
        ));
  }
}
