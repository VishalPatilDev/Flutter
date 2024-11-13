import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      // appBar: AppBar(
      //   leading: Text("${time.hour}:${time.minute}"),
      //   actions: const [
      //     Icon(Icons.network_cell_rounded),
      //     Icon(Icons.wifi_2_bar_rounded),
      //     Icon(Icons.battery_4_bar_sharp)
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            width: 390,
            height: 631,
            child: Image.network(
              'https://wallpapercave.com/wp/wp6701058.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Container(
          //   width: 390,
          //   height: 631,
          //   // color: Colors.blue,
          //   child: SvgPicture.asset(
          //     'assets/images/Rectangle 1.svg',
          //   ),
          // ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Lets find your Paradise",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              alignment: Alignment.center,
              width: 232,
              height: 46,
              child: Text(
                "Find your perfect dream space with just a few clicks",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(101, 101, 101, 1),
                    ),
              )),
          const SizedBox(
            height: 5,
          ),
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(32, 169, 247, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/homeScreen');
                },
                child: Text("Get Started",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ))),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 138,
            height: 5.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ],
      ),
    );
  }
}
