import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            height: 465,
            width: double.infinity,
            child: Image.asset('assets/images/Rectangle 989.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 301,
            height: 100,
            child: Text("Find The Best Collections",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 42,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(13, 13, 14, 1))),
          ),
          Container(
            width: 301,
            height: 48,
            child: Text(
                "Get your dream item easily with FashionHub and get other intersting offer",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(121, 119, 128, 1))),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 62,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    onPressed: () {},
                    child: Text("Sign Up",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(13, 13, 14, 1))),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  height: 62,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 122, 0, 1),
                      borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 122, 0, 1),
                      ),
                      onPressed: () {},
                      child: Text("Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
