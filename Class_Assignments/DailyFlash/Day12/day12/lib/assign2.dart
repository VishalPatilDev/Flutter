import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  final textFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List weekDays = [];
  void weekDay(String week) {
    setState(() {
      weekDays.add(week);
    });
    textFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: textFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  labelText: "Enter WeekDays",
                ),
                onSubmitted: (value) {
                  weekDay(value);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: weekDays.length,
                    itemBuilder: ((context, index) {
                      return Center(child: Text('[${weekDays[index]}]'));
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
