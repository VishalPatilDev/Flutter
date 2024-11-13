import 'package:flutter/material.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  List listOfMap = [
    {
      'icon1': Icons.shopping_bag_outlined,
      'string1': "Your Checkout is successful, product is \non the way",
      'icon2': Icons.arrow_forward_ios,
      'string2': "Appointment request accepted"
    },
    {
      'icon1': Icons.shopping_bag_outlined,
      'string1': "Your Checkout is successful, product is \non the way",
      'icon2': Icons.arrow_forward_ios,
      'string2': "Appointment request accepted"
    },
    {
      'icon1': Icons.shopping_bag_outlined,
      'string1': "Your Checkout is successful, product is \non the way",
      'icon2': Icons.arrow_forward_ios,
      'string2': "Appointment request accepted"
    },
    {
      'icon1': Icons.shopping_bag_outlined,
      'string1': "Your Checkout is successful, product is \non the way",
      'icon2': Icons.arrow_forward_ios,
      'string2': "Appointment request accepted"
    }
  ];
  List date = ["Today", "25 September", "15 September", "12 October"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(238, 255, 255, 255),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromRGBO(245, 146, 69, 1)),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Text("Notifications",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(31, 32, 41, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500))
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Row(
            //     children: [
            //       Text("Today",
            //           style: Theme.of(context).textTheme.displayMedium!.copyWith(
            //               color: Color.fromRGBO(31, 32, 41, 1),
            //               fontSize: 14,
            //               fontWeight: FontWeight.w500))
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                  itemCount: listOfMap.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 20, bottom: 5),
                          child: Row(
                            children: [
                              Text(date[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          color: Color.fromRGBO(31, 32, 41, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        Container(
                          width: 350,
                          height: 104,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Container(
                                  width: 311,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Color.fromRGBO(
                                                252, 219, 193, 1)),
                                        child: Icon(listOfMap[index]['icon1']),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(listOfMap[index]['string1']),
                                    ],
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Container(
                                  width: 311,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Color.fromRGBO(
                                                252, 219, 193, 1)),
                                        child: Icon(listOfMap[index]['icon2']),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(listOfMap[index]['string2']),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
            )
          ],
        ));
  }
}
