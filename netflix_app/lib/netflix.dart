import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);
  @override
  State createState() => _FieldState();
}

class _FieldState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Title(
          color: Colors.black,
          child: const TextField(),
        ),
      ),
    );
  }
}

class NetflixApp extends StatefulWidget {
  const NetflixApp({super.key});
  @override
  State<NetflixApp> createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset('assets/images/logos_netflix.png'),
        // title: const Text(
        //   "Netflix",
        //   style: TextStyle(
        //       fontSize: 30,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.red),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Field(),
                ),
              );
            },
            icon: const Icon(Icons.search_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Text(
              "Movies",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg",
                    width: 200,
                    height: 300,
                  ),
                  const SizedBox(width: 5),
                  Image.network(
                    "https://content.tupaki.com/twdata/2023/0423/news/Hanu-Man-Makers-Dropped-Hanuman-Chalisa-Rendition--1680783652-1156.jpg",
                    width: 200,
                    height: 300,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    width: 200,
                    height: 300,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Series",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    width: 150,
                    height: 200,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    width: 150,
                    height: 200,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Most Replayed",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    width: 150,
                    height: 200,
                  ),
                  const SizedBox(width: 5),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    width: 150,
                    height: 200,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
