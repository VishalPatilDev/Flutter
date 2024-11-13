import 'package:flutter/material.dart';
import 'armstrong.dart';
import 'palindrome.dart';
import 'strong.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  List<int> listNum = [
    121,
    107,
    555,
    1,
    23,
    656,
    753357,
    145,
    153,
  ];
  int getPal() {
    return Palindrome().getPalindrome(listNum);
  }

  int getArm() {
    return Armstrong().getArmstrong(listNum);
  }

  int getStr() {
    return Strong().getStrong(listNum);
  }

  int? _countpal;
  int? _countarm;
  int? _countStr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Display Counts")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Given Numbers : $listNum"),
              const SizedBox(height: 20),
            ],
          ),
          SizedBox(height: 20),
          const Text('Palindrome Count is :'),
          Text('$_countpal'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _countpal = getPal();
                });
              },
              child: const Text('palindrome')),
          const SizedBox(height: 40),
          const Text('Armstrong Count is :'),
          Text('$_countarm'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _countarm = getArm();
                });
              },
              child: const Text('Armstrong')),
          const SizedBox(height: 40),
          const Text('Strong Count is :'),
          Text('$_countStr'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _countStr = getStr();
                });
              },
              child: const Text('Strong'))
        ],
      ),
    );
  }
}
