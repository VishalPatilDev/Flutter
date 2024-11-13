import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
                'https://www.allrecipes.com/thmb/PG6sVP7UHdSUyTPejVnbNhrS918=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/RM-244638-no-yeast-pizza-crust-ddmfs-3x4-1545-567c1292e77f467894830c7a92e0f2fe.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Pizza",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'A large circle of flat bread baked with cheese, tomatoes, and vegetables spread on top',
                style: TextStyle(fontSize: 22)),
          )
        ],
      ),
    );
  }
}
