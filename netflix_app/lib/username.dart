import 'package:flutter/material.dart';
import 'package:netflix_app/netflix_interface.dart';

class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset('assets/images/logos_netflix.png'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.edit_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NetflixInterface()));
                      },
                      child: Container(
                        height: 92,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/images/Rectangle 2.png'),
                      ),
                    ),
                    const Text(
                      "Vishal",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                Column(
                  children: [
                    Container(
                      height: 92,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Image.asset('assets/images/Rectangle 3.png'),
                    ),
                    const Text(
                      "Vishal",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 92,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Image.asset('assets/images/Rectangle 4.png'),
                    ),
                    const Text(
                      "Vishal",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                Column(
                  children: [
                    Container(
                      height: 92,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Image.asset('assets/images/Rectangle 5.png'),
                    ),
                    const Text(
                      "Vishal",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NetflixInterface()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Add Profile',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
