import 'package:expense_manager/graph_screen.dart';
import 'package:expense_manager/trash.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final List<String> images = [
    "assets/food.png",
    "assets/fuel.png",
    "assets/medicine.png",
    "assets/shopping.png",
  ];

  List<String> texts = [
    "Food",
    "Fuel",
    "Medicine",
    "Shopping",
  ];
  Future<dynamic> showMyDialog() async {
    return await showDialog(
      context: context,
//barrierColor: Colors.black54,
//barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Confirmation"),
          content: const Text(
            "Are you sure you want to delete the selected category?",
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 74,
                        width: 74,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(140, 128, 128, 0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/image.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(33, 33, 33, 1),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 68,
                  height: 20,
                  child: const Text(
                    "Image URL",
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
                    controller: _imageController,
                    decoration: InputDecoration(
                      hintText: "Enter URL",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      labelText: "url",
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
                      hintText: "Enter category name",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
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
                            backgroundColor:
                                const Color.fromRGBO(14, 161, 125, 1),
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
          "Categories",
          style: TextStyle(
              color: Color.fromRGBO(33, 33, 33, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
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
                    color: Color.fromRGBO(14, 161, 125, 0.15),
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
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(25),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                showMyDialog();
              },
              child: Container(
                  height: 145,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(1, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 8,
                            spreadRadius: 0)
                      ]),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            images[index],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          texts[index],
                          style: const TextStyle(
                              color: Color.fromRGBO(33, 33, 33, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )),
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
