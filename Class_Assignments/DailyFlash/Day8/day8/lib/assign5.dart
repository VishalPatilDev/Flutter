import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Title", style: TextStyle(fontSize: 20)),
                            Text("Give some Descirption here")
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle,
                            color: Colors.purple),
                        child: const Icon(Icons.add),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
