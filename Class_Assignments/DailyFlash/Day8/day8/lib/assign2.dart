import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  List imageList = [
    'https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=D1z4xPCs-qQIZyUqRcHrnsJSJy_YbUD9udOrXpilNpI=',
    'https://www.recipetineats.com/wp-content/uploads/2022/08/Stack-of-cheeseburgers.jpg',
    'https://lmbsweets.com/wp-content/uploads/2021/07/grilled-veg-cheese-sandwich.jpg',
    'https://cdn.citymapia.com/kottayam/savvy-multicusine-restaurant/2009/Portfolio.jpg?biz=511',
    'https://feeds.abplive.com/onecms/images/uploaded-images/2021/07/07/b840a7fdf12574e20d5902af24e0436e_original.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/chocolate-cake-index-64b83bce2df26.jpg?crop=0.6668359143606668xw:1xh;center,top&resize=1200:*'
  ];
  List foodItem = [
    'Pizza',
    'Burger',
    'Sandwich',
    'Chicken Lolipop',
    'Chochlates',
    'Cake'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      width: 200,
                      height: 200,
                      child: Image.network(imageList[index]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(
                          child: Text(
                        foodItem[index],
                        style: const TextStyle(fontSize: 18),
                      )),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
