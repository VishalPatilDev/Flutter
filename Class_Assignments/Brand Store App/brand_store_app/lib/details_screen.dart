import 'package:flutter/material.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({super.key});

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  bool isCllicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        // backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Color.fromRGBO(13, 13, 14, 1),
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
                width: 20,
                height: 22,
                child: Icon(
                  Icons.bookmark_border_outlined,
                  color: Color.fromRGBO(13, 13, 14, 1),
                )),
          )
        ],
        leading: Container(
          width: 11,
          height: 20,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 315,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/Rectangle 984.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 209,
                  child: Text(
                    "Premium Tagerine Shirt",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(13, 13, 14, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/Ellipse 14.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/Ellipse 15.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/Ellipse 16.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(children: [
              Text(
                "Size",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color.fromRGBO(13, 13, 14, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isCllicked = !isCllicked;
                  });
                  // isCllicked = !isCllicked;
                },
                child: Container(
                  width: 45,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isCllicked
                        ? Color.fromRGBO(13, 13, 14, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "S",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: isCllicked
                                  ? Colors.white
                                  : Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  isCllicked = !isCllicked;
                },
                child: Container(
                  width: 45,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isCllicked
                        ? Color.fromRGBO(13, 13, 14, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "M",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: isCllicked
                                  ? Colors.white
                                  : Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  isCllicked = !isCllicked;
                },
                child: Container(
                  width: 45,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isCllicked
                        ? Color.fromRGBO(13, 13, 14, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "L",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: isCllicked
                                  ? Colors.white
                                  : Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  isCllicked = !isCllicked;
                },
                child: Container(
                  width: 45,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isCllicked
                        ? Color.fromRGBO(13, 13, 14, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "XL",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: isCllicked
                                  ? Colors.white
                                  : Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  isCllicked = !isCllicked;
                },
                child: Container(
                  width: 45,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isCllicked
                        ? Color.fromRGBO(13, 13, 14, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "XXL",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: isCllicked
                                  ? Colors.white
                                  : Color.fromRGBO(121, 119, 128, 1)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$257.85",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(13, 13, 14, 1),
                    ),
              ),
              Container(
                width: 162,
                height: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Color.fromRGBO(255, 122, 0, 1),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Add To Cart",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
