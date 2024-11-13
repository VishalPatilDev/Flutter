import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DailyFlash"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                height: 300,
                width: 300,
                child: Image.network(
                  'https://www.lux-review.com/wp-content/uploads/2020/12/grocery-shopping.jpg',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: 250,
                  height: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(fontSize: 18),
                      )))
            ],
          ),
        ));
  }
}
