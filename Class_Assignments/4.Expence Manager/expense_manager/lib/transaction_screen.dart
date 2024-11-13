import 'package:expense_manager/graph_screen.dart';
import 'package:expense_manager/trash.dart';
import 'package:flutter/material.dart';

import 'category_screen.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 253, 253),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 31,
                  height: 20,
                  child: const Text(
                    "Date",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 316,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: "Date",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 1,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1),
                            width: 1,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 52,
                  height: 20,
                  child: const Text(
                    "Amount",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 316,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: _amountController,
                    decoration: InputDecoration(
                      hintText: "Amount",
                      labelText: "Amount",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 1,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1),
                            width: 1,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 61,
                  height: 20,
                  child: const Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 316,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: _categoryController,
                    decoration: InputDecoration(
                      hintText: "Category",
                      labelText: "Category",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 1,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1),
                            width: 1,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 74,
                  height: 20,
                  child: const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 316,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      hintText: "Description",
                      labelText: "Description",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 1,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1),
                            width: 1,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                        width: 123,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(14, 161, 125, 1),
                          borderRadius: BorderRadius.all(Radius.circular(67)),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(67),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            'Add ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "June 2022",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ),
        actions: const [Icon(Icons.search)],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
                    color: Color.fromRGBO(14, 161, 125, 0.15),
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
                    // color: Color.fromRGBO(14, 161, 125, 0.15),
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
      body: ListView.separated(
          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 361.5,
                height: 58,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 43,
                          height: 43,
                          child: Image.asset(
                            "assets/medicine.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 68,
                                    height: 23,
                                    child: const Text(
                                      "Medicine",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  Container(
                                      child: const Icon(
                                    Icons.remove_circle,
                                    color: Colors.red,
                                  )),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 29,
                                    height: 23,
                                    child: const Text(
                                      "500",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(children: [
                                Container(
                                  width: 251,
                                  height: 18,
                                  child: const Text(
                                    "Lorem Ipsum is simply dummy text of the ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(children: [
                      Spacer(),
                      Container(
                        width: 81,
                        height: 15,
                        child: const Text(
                          "3 June | 11:50 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: FloatingActionButton.extended(
          onPressed: () {
            showBottomSheet();
          },
          label: Row(
            children: [
              Image.asset(
                "assets/add.png",
                height: 32,
                width: 32,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Add Category",
                style: TextStyle(
                    color: Color.fromRGBO(37, 37, 37, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
