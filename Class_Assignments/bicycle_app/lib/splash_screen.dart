import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(shape: ,
        onPressed: () {},
        child: Container(
          width: 315,
          height: 76,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(38))),
          child: Row(
            children: [
              Icon(Icons.keyboard_arrow_right_outlined),
              Text("Get Started")
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/image 6.png',
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 202.9),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.zero),
                      color: Color.fromRGBO(75, 76, 237, 1)),
                  width: double.infinity,
                  height: 500,
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 230.0),
                  child: Container(
                    // alignment: Alignment.topRight,
                    width: 700,
                    height: 192,
                    decoration: BoxDecoration(),
                    child: Text(
                      'EXTREME',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 130,
                            fontWeight: FontWeight.w400,
                            // color: Color.fromRGBO(255, 255, 255, 0.5)
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0, left: 18),
                child: Image.asset('assets/images/pngwing.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
