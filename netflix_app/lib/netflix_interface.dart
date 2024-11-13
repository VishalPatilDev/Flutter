import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NetflixInterface extends StatefulWidget {
  const NetflixInterface({super.key});

  @override
  State<NetflixInterface> createState() => _NetflixInterfaceState();
}

class _NetflixInterfaceState extends State<NetflixInterface> {
  List previewList = [
    'assets/images/Ellipse 2.png',
    'assets/images/Ellipse 3 (1).png',
    'assets/images/Ellipse 4.png',
    'assets/images/Ellipse 4.png'
  ];
  List popularList = [
    'assets/images/Rectangle 14 (1).png',
    'assets/images/Rectangle 15 (1).png',
    'assets/images/Rectangle 15.png',
    'assets/images/Rectangle 16 (1).png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 415,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 26.png')),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                height: 57,
                width: 340,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/logos_netflix-icon.png'),
                    Text("TV Shows",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20))),
                    Text("Movies",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20))),
                    Text("My List",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20))),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text("My List",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      minimumSize: Size(110, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 40,
                      ),
                      Text("Play",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text("Info",
                        style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Previews",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: previewList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(2),
                      height: 118,
                      width: 118,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(previewList[index]),
                    );
                  }),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Popular on Netflix",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 191,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: previewList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(2),
                      height: 161,
                      width: 103,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(popularList[index]),
                    );
                  }),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Trending Now",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 191,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: previewList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(2),
                      height: 161,
                      width: 103,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(popularList[index % 4]),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade900,
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  Text("Home",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 14))),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  Text("Search",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 14))),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.playlist_play_outlined,
                    color: Colors.white,
                  ),
                  Text("Comming Soon",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 14))),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.download_outlined,
                    color: Colors.white,
                  ),
                  Text("Downloads",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 14))),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  ),
                  Text("More",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 14))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
