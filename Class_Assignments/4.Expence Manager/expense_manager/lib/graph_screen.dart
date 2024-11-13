import 'package:expense_manager/category_screen.dart';
import 'package:expense_manager/trash.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "Food": 30,
    "Fuel": 10,
    "Medicine": 5,
    "Entertainment": 8,
    "Shopping": 20,
  };

  final List<String> images = [
    "assets/medicine.png",
    "assets/food.png",
    "assets/shopping.png",
    "assets/fuel.png",
    "assets/entertainment.png"
  ];

  List<String> name = [
    "Food",
    "Fuel",
    "Shopping",
    "Medicine",
    "Entertainment",
  ];
  List<String> expences = [
    "₹ 650.00",
    "₹ 505.00",
    "₹ 550.00",
    "₹ 850.00",
    "₹ 950.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
          ),
          title: const Text(
            "Graphs",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        drawer: Container(
          width: 216,
          height: 811,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 54,
                  child: Column(
                    children: [
                      Container(
                        width: 145,
                        height: 24,
                        child: const Text(
                          "Expense Manager",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 145,
                        height: 15,
                        child: const Text(
                          "Saves all your Transactions",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 184,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: const BoxDecoration(
                      // color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_balance,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    title: Container(
                      width: 95,
                      height: 24,
                      child: const Text(
                        'Transaction',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 184,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListTile(
                    leading: Icon(
                      Icons.pie_chart,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    title: Container(
                      width: 95,
                      height: 24,
                      child: const Text(
                        'Graphs',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GraphScreen()),
                      );
                    },
                  ),
                ),
                Container(
                  width: 184,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: const BoxDecoration(
                      // color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListTile(
                    leading: Icon(
                      Icons.category,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    title: Container(
                      width: 95,
                      height: 24,
                      child: const Text(
                        'Category',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryScreen()),
                      );
                    },
                  ),
                ),
                Container(
                  width: 184,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: const BoxDecoration(
                      // color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListTile(
                    leading: Icon(
                      Icons.delete,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    title: Container(
                      width: 95,
                      height: 24,
                      child: const Text(
                        'Trash',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const trash()),
                      );
                    },
                  ),
                ),
                Container(
                  width: 184,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: const BoxDecoration(
                      // color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    title: Container(
                      width: 95,
                      height: 24,
                      child: const Text(
                        'About us',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: PieChart(
                    dataMap: data,
                    chartType: ChartType.ring,
                    animationDuration: const Duration(milliseconds: 2000),
                    chartRadius: 200,
                    ringStrokeWidth: 20,
                    centerWidget: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹ 2550.00",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValues: false,
                        showChartValuesInPercentage: true),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 40,
                              width: 284,
                              child: Row(
                                children: [
                                  Image.asset(images[index]),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    name[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Spacer(),
                                  Text(
                                    expences[index],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "2,550.00",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
