import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State<Assign3> createState() => _Assign3State();
}

class _Assign3State extends State<Assign3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/IMG_20230217_175200_314.jpg'),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 3),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5)
                  ]),
              child: const Center(child: Text("Vishal Patil")),
            )
          ],
        ),
      ),
    );
  }
}
