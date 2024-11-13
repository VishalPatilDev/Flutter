import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List imageList = [
  'assets/images/Rectangle 32.png',
  'assets/images/Rectangle 38.png',
  'assets/images/Rectangle 39.png'
];
List yearList = [2020, 2023, 2023];
List songName = ["Dead Inside", "Alone", "Heartless"];

List iconList = [
  'assets/images/Rectangle 34.png',
  'assets/images/Rectangle 34.png',
  'assets/images/Rectangle 34.png'
];

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          Container(
            child: Image.asset('assets/images/111 1.png'),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 225.0, left: 20),
                child: Container(
                  child: Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 130,
                height: 37,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 46, 0, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GalleryPage()));
                    },
                    child: Text(
                      "Subscribe",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(19, 19, 19, 1),
                      )),
                    )),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      child: Text(
                        "Discography",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(248, 162, 69, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Container(
                            width: 119,
                            height: 140,
                            child: Image.asset(imageList[index]),
                          ),
                          Text(
                            songName[index],
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            "${yearList[index]}",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(132, 125, 125, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      child: Text(
                        "Popular singles",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: Color.fromRGBO(203, 200, 200, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Color.fromRGBO(248, 162, 69, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    shrinkWrap: true,
                    itemCount: iconList.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 67,
                            height: 72,
                            child: Image.asset(iconList[index]),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 82,
                                height: 15,
                                child: Text(
                                  songName[index],
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Text(
                                "${yearList[index]}",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      );
                    })),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color.fromRGBO(19, 19, 19, 1),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            icon: Icon(Icons.search),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            icon: Icon(Icons.card_travel),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
            activeIcon: Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
