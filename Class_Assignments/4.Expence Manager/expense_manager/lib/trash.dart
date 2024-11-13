import 'package:flutter/material.dart';

class trash extends StatefulWidget {
  const trash({super.key});

  State<trash> createState() => _trashState();
}
  
class _trashState extends State<trash> {
  List<String> name = [
    "Medicine",
    "Food",
    "Medicine",
    "Food",
    "Medicine",
    "Food"
  ];
  List<String> expences = [
    "₹ 500.00",
    "₹ 600.00",
    "₹ 500.00",
    "₹ 600.00",
    "₹ 500.00",
    "₹ 600.00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Trash"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Subtract.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            name[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            expences[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 35),
                              height: 40,
                              width: 151,
                              child: const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more"),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [Spacer(), Text("3 June | 11:50 AM")],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: 6));
  }
}
