import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    'assets/images/Rectangle 5 (1).png',
    'assets/images/Rectangle 5 (1).png',
    'assets/images/Rectangle 5 (1).png'
  ];
  List villaName = ['Night Hill Villa', 'Night Villa', 'Sun Hill Villa'];
  List locName = ['London,Night Hill', 'London,New Park', 'London,Night Hill'];
  List priceOfVilla = ['\$5900', '\$7000 ', '\$6000'];
  List ratings = [4.9, 4.4, 4.3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "Hey Dravid,",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(101, 101, 101, 1),
                        ),
                  ),
                  const Spacer(),
                  Container(
                    width: 48,
                    height: 56,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/images/Ellipse 1.png'),
                    // child: SvgPicture.asset('assets/images/Ellipse 1.svg')
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Container(
                    width: 188,
                    height: 60,
                    child: Text("Let’s find your best residence ",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 346,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(14)),
                      // focusedBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(14)),
                      prefixIcon: const Icon(Icons.search_outlined),
                      focusColor: const Color.fromRGBO(255, 255, 255, 1),
                      hintText: "Search your favorite paradise",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: const Color.fromRGBO(33, 33, 33, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "Most Popular",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(32, 169, 247, 1)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 308,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/detailsPage');
                            // if (imageList[index] == 0) {
                            //   Navigator.pushNamed(context, '/detailsPage');
                            // } else {
                            //   null;
                            // }
                          },
                          child: Container(
                            width: 211,
                            height: 306,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(imageList[index]),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, left: 130.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: Colors.blue,
                                          ),
                                          // alignment: Alignment.center,
                                          width: 45,
                                          height: 21.7,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                size: 20,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                "${ratings[index]}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium!
                                                    .copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  // child: Image.asset(imageList[index])),
                                  // const SizedBox(
                                  //   height: 5,
                                  // ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      villaName[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1)),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   height: 5,
                                  // ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      villaName[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(
                                                  72, 72, 72, 1)),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    children: [
                                      Text(
                                        priceOfVilla[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: const Color.fromRGBO(
                                                    32, 169, 247, 1)),
                                      ),
                                      Text(
                                        "/Month",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromRGBO(
                                                    72, 72, 72, 1)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text('Nearby Your Locatoin',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 22,
                              fontWeight: FontWeight.w600)),
                  Spacer(),
                  Text('More',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: const Color.fromRGBO(32, 169, 247, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromRGBO(255, 255, 255, 1)),
                child: ListTile(
                  leading: Image.asset('assets/images/Rectangle 8.png'),
                  title: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          " Jumeriah Golf Estates Villa",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            "London,Area Plam Jumeriah",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.king_bed_rounded),
                          Text(
                            "4 Bedrooms",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9),
                          ),
                          const Icon(Icons.bathtub),
                          Text(
                            "5 Bathrooms",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            "\$4500",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color:
                                        const Color.fromRGBO(32, 169, 247, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                          ),
                          Text(
                            "/Month",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: const Color.fromRGBO(90, 90, 90, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 25,
            // ),
            const Spacer(),
            Container(
              width: 138,
              height: 5.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
