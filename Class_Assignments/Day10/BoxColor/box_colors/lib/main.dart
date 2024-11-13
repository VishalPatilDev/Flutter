import 'package:flutter/material.dart';

void main() => runApp(const BoxColor());

class BoxColor extends StatefulWidget {
  const BoxColor({super.key});
  @override
  State<BoxColor> createState() => _BoxColorState();
}

class _BoxColorState extends State<BoxColor> {
  int _count1 = 0;
  int _count2 = 0;

  //Box1
  Color box1Color() {
    if (_count1 == 0) {
      return Colors.white;
    } else if (_count1 == 1) {
      return Colors.red;
    } else if (_count1 == 2) {
      return Colors.blue;
    } else if (_count1 == 3) {
      return Colors.green;
    } else {
      _count1 = 0;
      return Colors.white;
    }
  }

//Box2
  Color box2Color() {
    if (_count2 == 0) {
      return Colors.white;
    } else if (_count2 == 1) {
      return Colors.red;
    } else if (_count2 == 2) {
      return Colors.blue;
    } else if (_count2 == 3) {
      return Colors.green;
    } else {
      _count2 = 0;
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 162, 128, 188),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          foregroundColor: Colors.white,
          title: const Text(
            "Color Box",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
                fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "To change color of box1 click Button1 ",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "To change color of box2 click Button2 ",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: box1Color(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent.shade400),
                        onPressed: () {
                          setState(() {
                            _count1++;
                          });
                        },
                        child: const Text("Button 1"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: box2Color(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent.shade400),
                        onPressed: () {
                          setState(() {
                            _count2++;
                          });
                        },
                        child: const Text("Button 2"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
