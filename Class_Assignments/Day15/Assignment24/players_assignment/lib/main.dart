import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue.shade100,
          appBar: AppBar(
            title: const Text(
              "Players",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
            centerTitle: true,
          ),
          body: Players(),
        ));
  }
}

class Players extends StatefulWidget {
  const Players({super.key});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  List playerList = [
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e1a1ae4997a34eba80be19df56da817e_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_21_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f1e75aca52014a959017e46b94cbca39_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_22_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3954708bfa4a430294a0a85c4c593025_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_25_model.jpg",
    ],
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5e7780fb996049f5bc7662ecb284ca35_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_23_hover_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/81f36f0ecf4a4eaa80b13b490742ce2c_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_25_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0f13ef96680647b1a0fde3b492f453ab_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_42_detail.jpg",
    ],
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a214ea4e327549af9797785da218db87_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_41_detail.jpg",
      "https://i3.wp.com/cdn.dnaindia.com/sites/default/files/styles/full/public/2021/01/14/949887-c-2-use.jpg?strip=all",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR06TSPB42keFg3SubqhPyqaTuCIDSCId2wQ&usqp=CAU",
    ],
  ];

  List formatName = ["T20", "OneDay", "Test"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 600,
              width: 250,
              child: ListView.separated(
                itemCount: playerList.length,
                itemBuilder: (context, index) {
                  List formatPlayer = playerList[index];
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        formatName[index],
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                      Container(
                        height: 400,
                        child: ListView.builder(
                          itemCount: formatPlayer.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.all(15),
                              elevation: 10,

                              // height: 200,
                              // width: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Image.network(
                                    formatPlayer[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 5,
                    color: Colors.black,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
class _PlayersState2 extends State<Players> {

  List playerList = [
    
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e1a1ae4997a34eba80be19df56da817e_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_21_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f1e75aca52014a959017e46b94cbca39_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_22_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3954708bfa4a430294a0a85c4c593025_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_25_model.jpg",
    ],
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5e7780fb996049f5bc7662ecb284ca35_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_23_hover_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/81f36f0ecf4a4eaa80b13b490742ce2c_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_25_model.jpg",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0f13ef96680647b1a0fde3b492f453ab_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_42_detail.jpg",
    ],
    [
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a214ea4e327549af9797785da218db87_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_41_detail.jpg",
      "https://i3.wp.com/cdn.dnaindia.com/sites/default/files/styles/full/public/2021/01/14/949887-c-2-use.jpg?strip=all",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR06TSPB42keFg3SubqhPyqaTuCIDSCId2wQ&usqp=CAU",
    ],
    
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 700,
        width: 250,
        child: ListView.separated(
          itemCount: playerList.length,
          itemBuilder: (context, index) {
            List formatPlayer = playerList[index];
            return Container(
              height: 330,
              child: ListView.builder(
                itemCount: formatPlayer.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    height: 100,
                    width: 100,
                    child: Image.network(
                      formatPlayer[index],
                    ),
                  );
                },
                ),
            );
          },
          separatorBuilder: (context, index) {
            return const Text("Another Format");
          },
          
          ),
      ),
    );
  }
}
*/