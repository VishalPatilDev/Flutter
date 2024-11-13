import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        // backgroundColor: Colors.blue,
        centerTitle: true,
        // title: Text(
        //   "Details",
        //   style: Theme.of(context).textTheme.displayMedium!.copyWith(
        //       color: Color.fromRGBO(13, 13, 14, 1),
        //       fontSize: 18,
        //       fontWeight: FontWeight.w400),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Container(
                width: 20,
                height: 22,
                child: Icon(
                  Icons.circle_outlined,
                  color: Color.fromRGBO(13, 13, 14, 1),
                )),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 11,
            height: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.category_outlined),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color.fromRGBO(13, 13, 14, 1),
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(children: [
              Text(
                "Best trendy collection!",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color.fromRGBO(121, 119, 128, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ]),
          ),
          const SizedBox(
            height: 98,
          ),
          Container(
            width: 315,
            height: 454,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return Container(
                    color: Colors.blue,
                  );
                })),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.orange,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                // color: Colors.black,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
