import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List petType = ['Veterinary', 'Grooming', 'Pet Store', 'Training'];
  List imageList = [
    'assets/images/image (2).png',
    'assets/images/image (3).png',
    'assets/images/image (4).png',
    'assets/images/image (5).png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/image.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Hello, Sarah",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                              ),
                              Text(
                                "Good Morning!",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                            width: 24,
                            height: 24,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/notifications_screen');
                                },
                                icon: Icon(
                                  Icons.notifications_none_rounded,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 327,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromRGBO(250, 200, 162, 1))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            size: 24,
                            Icons.search,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          )),
                      initialValue: 'search',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        } else {
                          null;
                        }
                      },
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(194, 195, 204, 1))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 327,
                height: 99,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  // boxShadow: [
                  //   BoxShadow(offset: Offset(0, 1), blurRadius: 5)
                  // ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    "In Love With Pets?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                  ),
                                  Text(
                                    "Get all what you need for them",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                            color:
                                                Color.fromRGBO(245, 146, 69, 1),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 99,
                                  child: Image.asset(
                                    'assets/images/image (1).png',
                                    // width: 100,
                                    // height: 90,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Text(
                      "Category",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(194, 195, 204, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 82,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          width: 65,
                          height: 82,
                          child: Column(
                            children: [
                              Container(
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(imageList[index]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                petType[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text(
                      "Event",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 327,
                height: 126,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 191,
                        height: 94,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Find and Join in Special Events For Your Pets!",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 89,
                                  height: 34,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color.fromRGBO(245, 146, 69, 1)),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(245, 146, 69, 1)),
                                    onPressed: () {},
                                    child: Text(
                                      "See More",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        // color: Colors.red,
                        // width: 96,
                        // height: 94,
                        child: Image.asset(
                          'assets/images/image (6).png',
                          width: 96,
                          height: 94,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Text(
                      "Community",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 327,
                        height: 126,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Container(
                                // color: Colors.red,
                                width: 191,
                                height: 94,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Connect and share with communities!",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          width: 89,
                                          height: 34,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              color: Color.fromRGBO(
                                                  245, 146, 69, 1)),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    245, 146, 69, 1)),
                                            onPressed: () {},
                                            child: Text(
                                              "Share",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium!
                                                  .copyWith(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                // color: Colors.red,
                                // width: 96,
                                // height: 94,
                                child: Image.asset(
                                  'assets/images/image (6).png',
                                  width: 96,
                                  height: 94,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // width: 375,
                height: 82,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 24,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Home",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.heart_broken,
                            size: 24,
                            color: Color.fromRGBO(126, 128, 143, 1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Service",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Color.fromRGBO(126, 128, 143, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 24,
                            color: Color.fromRGBO(126, 128, 143, 1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "History",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Color.fromRGBO(126, 128, 143, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            size: 24,
                            color: Color.fromRGBO(126, 128, 143, 1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Profile",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Color.fromRGBO(126, 128, 143, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 650.0),
              child: Container(
                width: 82,
                height: 82,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(245, 146, 69, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Shop",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // fixedColor: Colors.red,
      //   unselectedItemColor: Color.fromRGBO(126, 128, 143, 1),
      //   selectedItemColor: Color.fromRGBO(245, 146, 69, 1),
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.heart_broken,
      //       ),
      //       label: "Service",
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.punch_clock_rounded,

      //           // color: Colors.red,
      //         ),
      //         label: "History"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //           // color: Colors.red,
      //         ),
      //         label: "Profile"),
      //   ],
      // ),
    );
  }
}
