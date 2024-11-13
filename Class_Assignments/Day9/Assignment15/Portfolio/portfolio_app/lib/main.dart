import 'package:flutter/material.dart';

void main() => runApp(const MyPortfolio());

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});
  @override
  State createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State {
  int _count = 0;
  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: const Text(
            "Portfolio",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (_count >= 1)
                    ? const Text(
                        "Name : Vishal Patil",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    : Container(),
                (_count >= 2)
                    ? Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                          ),
                          child: Image.asset(
                            'assets/images/WhatsApp Image 2023-09-15 at 12.17.52.jpg',
                          ),
                        ),
                      )
                    : Container(),
                (_count >= 3)
                    ? const Text(
                        "College : TSSM BSCOER , Narhe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    : Container(),
                (_count >= 4)
                    ? Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                            height: 200,
                            width: 200,
                            decoration:
                                BoxDecoration(border: Border.all(width: 3)),
                            child: Image.asset('assets/images/TSSM LOGO.png')),
                      )
                    : Container(),
                (_count >= 5)
                    ? const Text(
                        "Dream Company : Google",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    : Container(),
                (_count >= 6)
                    ? Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3),
                            ),
                            child: Image.asset(
                                "assets/images/Google__G__logo.svg.png")),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCount,
          shape: const CircleBorder(side: BorderSide.none),
          child: const Text("Next"),
        ),
      ),
    );
  }
}
