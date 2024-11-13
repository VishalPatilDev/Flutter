import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});
  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {
  List imageList1 = [
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e1a1ae4997a34eba80be19df56da817e_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_21_model.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f1e75aca52014a959017e46b94cbca39_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_22_model.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3954708bfa4a430294a0a85c4c593025_9366/INDIA_CRICKET_TRI_COLOR_JERSEY_WITH_2_STARS_MEN_Blue_JC8812_25_model.jpg",
  ];
  List imageList2 = [
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5e7780fb996049f5bc7662ecb284ca35_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_23_hover_model.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/81f36f0ecf4a4eaa80b13b490742ce2c_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_25_model.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0f13ef96680647b1a0fde3b492f453ab_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_42_detail.jpg",
  ];
  List imageList3 = [
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a214ea4e327549af9797785da218db87_9366/INDIA_CRICKET_ODI_JERSEY_MEN_Blue_JE0098_41_detail.jpg",
    "https://i3.wp.com/cdn.dnaindia.com/sites/default/files/styles/full/public/2021/01/14/949887-c-2-use.jpg?strip=all",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR06TSPB42keFg3SubqhPyqaTuCIDSCId2wQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List View Demo",
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Text("T20",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal)),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: imageList1.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: Image.network(imageList1[index]),
                );
              },
            ),
          ),
          Text("One Day",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal)),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: imageList2.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: Image.network(imageList2[index]),
                );
              },
            ),
          ),
          Text("Test",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal)),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: imageList3.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 15,
                  color: Colors.black,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 200,
                  child: Image.network(imageList3[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
