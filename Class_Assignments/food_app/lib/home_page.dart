import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List recipieList = [
    Recipie(
        name: 'Burger',
        description:
            '''In a large mixing bowl, combine the ground beef, chopped onion, minced garlic, breadcrumbs, egg, Worcestershire sauce, salt, and pepper. Use your hands to mix everything together until well combined. Be careful not to overmix, as this can result in tough burgers.

Divide the mixture into equal portions and shape each portion into a patty.''',
        ingridiant:
            '''1 pound (450g) ground beef (you can also use a combination of beef and pork, or turkey)
1 small onion, finely chopped
2 cloves garlic, minced
1/4 cup breadcrumbs
1 egg
1 tablespoon Worcestershire sauce
Salt and pepper to taste
Burger buns''',
        duration: '1-2 hrs',
        imageUrl:
            'https://mrbrownbakery.com/image/images/rEyMLsj21Ooxk5mfhdeh7bSevaLGzUtczWXVDj4u.jpeg?p=full'),
    Recipie(
        name: 'Burger',
        description:
            '''In a large mixing bowl, combine the ground beef, chopped onion, minced garlic, breadcrumbs, egg, Worcestershire sauce, salt, and pepper. Use your hands to mix everything together until well combined. Be careful not to overmix, as this can result in tough burgers.

Divide the mixture into equal portions and shape each portion into a patty.''',
        ingridiant:
            '''1 pound (450g) ground beef (you can also use a combination of beef and pork, or turkey)
1 small onion, finely chopped
2 cloves garlic, minced
1/4 cup breadcrumbs
1 egg
1 tablespoon Worcestershire sauce
Salt and pepper to taste
Burger buns''',
        duration: '1-2 hrs',
        imageUrl:
            'https://mrbrownbakery.com/image/images/rEyMLsj21Ooxk5mfhdeh7bSevaLGzUtczWXVDj4u.jpeg?p=full')
  ];
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final durationController = TextEditingController();
  final descriptionController = TextEditingController();
  final ingridiantController = TextEditingController();
  final imageUrlController = TextEditingController();
  void showBottomSheet(bool doedit, [Recipie? recipieObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),

            //child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add Receipe",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 22)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter data";
                        } else {
                          return null;
                        }
                      },
                      controller: nameController,
                      decoration: const InputDecoration(
                        // enabledBorder: OutlineInputBorder(),
                        labelText: 'Food Item :',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter data";
                        } else {
                          return null;
                        }
                      },
                      controller: descriptionController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        // enabledBorder: OutlineInputBorder(),
                        labelText: 'Description :',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter data";
                        } else {
                          return null;
                        }
                      },
                      controller: ingridiantController,
                      decoration: const InputDecoration(
                        // enabledBorder: OutlineInputBorder(),
                        labelText: 'Ingridiants :',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter data";
                        } else {
                          return null;
                        }
                      },
                      controller: durationController,
                      decoration: const InputDecoration(
                        // enabledBorder: OutlineInputBorder(),
                        labelText: 'Duration :',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter data";
                        } else {
                          return null;
                        }
                      },
                      controller: imageUrlController,
                      decoration: const InputDecoration(
                        // enabledBorder: OutlineInputBorder(),
                        labelText: 'Image :',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
                        minimumSize: const Size(300, 50),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        doedit ? submit(doedit, recipieObj) : submit(doedit);
                        // recipieList.add(Recipie(
                        //     name: nameController.text,
                        //     description: descriptionController.text,
                        //     ingridiant: ingridiantController.text,
                        //     duration: durationController.text,
                        //     imageUrl: imageUrlController.text));
                        // setState(() {});
                        Navigator.of(context).pop();
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ),
            //  ),
          );
        });
  }

  void submit(bool doedit, [Recipie? recipieObj]) async {
    if (nameController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        ingridiantController.text.trim().isNotEmpty &&
        durationController.text.trim().isNotEmpty) {
      if (!doedit) {
        await insertData(
          Recipie(
              name: nameController.text,
              description: descriptionController.text,
              ingridiant: ingridiantController.text,
              duration: durationController.text,
              imageUrl: imageUrlController.text),
        );

        // setState(() {});
        setState(() {
          recipieList.add(Recipie(
              name: nameController.text.trim(),
              description: descriptionController.text.trim(),
              ingridiant: ingridiantController.text.trim(),
              duration: durationController.text.trim(),
              imageUrl: imageUrlController.text.trim()));

          // await updateData(recipieObj)
        });
      } else {
        await updateData(Recipie(
            name: nameController.text,
            description: descriptionController.text,
            ingridiant: ingridiantController.text,
            duration: durationController.text,
            imageUrl: imageUrlController.text));

        setState(() {
          // toDoModelObj!.date = dateController.text.trim();
          // recipieObj!.id = int.parse(nameController.text.trim());
          recipieObj!.imageUrl = imageUrlController.text.trim();
          recipieObj.name = nameController.text.trim();
          recipieObj.description = descriptionController.text.trim();
          recipieObj.ingridiant = ingridiantController.text.trim();
          recipieObj.duration = durationController.text.trim();

          // toDoModelObj.description = descriptionController.text.trim();
        });
      }
    }
    clearController();
  }

  void clearController() {
    nameController.clear();
    descriptionController.clear();
    ingridiantController.clear();
    durationController.clear();
    imageUrlController.clear();
  }

  void removeTasks(Recipie recipieObj) {
    setState(() {
      recipieList.remove(recipieObj);
    });
  }

  void editTask(Recipie recipieObj) {
//ASSIGN THE TEXT EDITING CONTROLLERS WITH THE TEXT VALUES AND
// THEN OPEN THE BOTTOM SHEET
    nameController.text = recipieObj.name;
    descriptionController.text = recipieObj.description;
    ingridiantController.text = recipieObj.ingridiant;
    durationController.text = recipieObj.duration;
    imageUrlController.text = recipieObj.imageUrl;
    showBottomSheet(true, recipieObj);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 40, 218, 206)),
            child: Text(
              "Food Receipes",
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: recipieList.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      extentRatio: 0.2,
                      motion: const DrawerMotion(),
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 40, 218, 206),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      editTask(recipieList[index]);
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 40, 218, 206),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      removeTasks(recipieList[index]);
                                      await deleteData(recipieList[index].id);
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                isDismissible: true,
                                context: context,
                                builder: ((context) {
                                  return Padding(
                                    padding: EdgeInsets.all(
                                      MediaQuery.of(context).viewInsets.bottom,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'https://us.123rf.com/450wm/maxmega/maxmega1703/maxmega170300005/74222556-fast-food-texture-de-fond-bleu.jpg')),
                                      ),
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      height: 400,
                                      width: double.infinity,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              // color: Colors.amber,
                                              alignment: Alignment.topLeft,
                                              child: Center(
                                                child: Text(
                                                  "Description : ",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${recipieList[index].description}',
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              // color: Colors.amber,
                                              alignment: Alignment.topLeft,
                                              child: Center(
                                                child: Text(
                                                  "Required Ingridiants : ",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${recipieList[index].ingridiant}',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white70,
                                                  textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              // color: Colors.grey,
                                              alignment: Alignment.topLeft,
                                              child: Center(
                                                child: Text(
                                                  "Duration: ",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${recipieList[index].duration}',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white70,
                                                  textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }));
                          });
                        },
                        splashColor: Colors.grey,

                        // splashColor: Colors.blue,
                        child: Container(
                          decoration: BoxDecoration(border: Border.all()),
                          width: double.infinity,

                          height: 200,
                          // width: 400,
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                child:
                                    Image.network(recipieList[index].imageUrl),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Food Item : ${recipieList[index].name}',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold)))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearController();
          showBottomSheet(false);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Recipie {
  int? id;
  String name;
  String description;
  String ingridiant;
  String duration;
  String imageUrl;
  Recipie(
      {this.id,
      required this.name,
      required this.description,
      required this.ingridiant,
      required this.duration,
      required this.imageUrl});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'ingridiant': ingridiant,
      'duration': duration,
      'imageUrl': imageUrl,
    };
  }
}
