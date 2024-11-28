import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Database _database;
  List<Recipe> recipeList = [];
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final durationController = TextEditingController();
  final descriptionController = TextEditingController();
  final ingredientController = TextEditingController();
  final imageUrlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'recipes_databasess.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE recipes(id INTEGER PRIMARY KEY, name TEXT, description TEXT, ingredient TEXT, duration TEXT, imageUrl TEXT)',
        );
      },
      version: 1,
    );
    fetchRecipes();
  }

  Future<void> fetchRecipes() async {
    final List<Map<String, dynamic>> recipes = await _database.query('recipes');
    setState(() {
      recipeList = recipes.map((map) => Recipe.fromMap(map)).toList();
    });
  }

  Future<void> insertRecipe(Recipe recipe) async {
    await _database.insert(
      'recipes',
      recipe.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    fetchRecipes();
  }

  Future<void> updateRecipe(Recipe recipe) async {
    await _database.update(
      'recipes',
      recipe.toMap(),
      where: 'id = ?',
      whereArgs: [recipe.id],
    );
    fetchRecipes();
  }

  Future<void> deleteRecipe(int id) async {
    await _database.delete(
      'recipes',
      where: 'id = ?',
      whereArgs: [id],
    );
    fetchRecipes();
  }

  void showBottomSheet(BuildContext context, bool doEdit, [Recipe? recipeObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    doEdit ? "Edit Recipe" : "Add Recipe",
                    style:
                        GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22)),
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      // enabledBorder: OutlineInputBorder(),
                      labelText: 'Food Name :',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      // enabledBorder: OutlineInputBorder(),
                      labelText: 'Recipie :',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: ingredientController,
                    decoration: const InputDecoration(
                      // enabledBorder: OutlineInputBorder(),
                      labelText: 'Ingredients :',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an ingredient';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a duration';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: imageUrlController,
                    decoration: const InputDecoration(
                      // enabledBorder: OutlineInputBorder(),
                      labelText: 'Image URL :',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an image URL';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
                      minimumSize: const Size(300, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      backgroundColor: Color.fromARGB(255, 209, 101, 62),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        doEdit ? submitEdit(recipeObj!) : submitAdd();
                        Navigator.pop(context);
                      }
                    },
                    child: Text(doEdit ? "Edit" : "Add"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void submitAdd() {
    final newRecipe = Recipe(
      name: nameController.text,
      description: descriptionController.text,
      ingredient: ingredientController.text,
      duration: durationController.text,
      imageUrl: imageUrlController.text,
    );
    insertRecipe(newRecipe);
    clearControllers();
  }

  void removeTasks(Recipe recipieObj) {
    setState(() {
      recipeList.remove(recipieObj);
    });
  }

//   void editTask(Recipie recipieObj) {
// //ASSIGN THE TEXT EDITING CONTROLLERS WITH THE TEXT VALUES AND
// // THEN OPEN THE BOTTOM SHEET
//     nameController.text = recipieObj.name;
//     descriptionController.text = recipieObj.description;
//     ingredientController.text = recipieObj.ingredient;
//     durationController.text = recipieObj.duration;
//     imageUrlController.text = recipieObj.imageUrl;
//     showBottomSheet(context, true, recipieObj);
//   }

  void submitEdit(Recipe recipe) {
    recipe.name = nameController.text;
    recipe.description = descriptionController.text;
    recipe.ingredient = ingredientController.text;
    recipe.duration = durationController.text;
    recipe.imageUrl = imageUrlController.text;
    updateRecipe(recipe);

    clearControllers();
  }

  void clearControllers() {
    nameController.clear();
    descriptionController.clear();
    ingredientController.clear();
    durationController.clear();
    imageUrlController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 209, 101, 62),
        foregroundColor: Colors.white,
        title: Text(
          "Recipe App",
          style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 24)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: recipeList.length,
                itemBuilder: (context, index) {
                  final recipe = recipeList[index];
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
                                      submitEdit(recipeList[index]);
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
                                      removeTasks(recipeList[index]);
                                      await deleteRecipe(recipeList[index].id!);
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
                                                  "Food Name : ",
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
                                              '${recipeList[index].name}',
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
                                              '${recipeList[index].description}',
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
                                              '${recipeList[index].ingredient}',
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
                                              '${recipeList[index].duration}',
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
                          decoration: BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.orange,
                            //       offset: Offset(5, 5),
                            //       blurRadius: 5)
                            // ],
                            border: Border.all(),
                          ),
                          width: double.infinity,

                          height: 200,
                          // width: 400,
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                child:
                                    Image.network(recipeList[index].imageUrl),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('${recipeList[index].name}',
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
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 209, 101, 62),
        onPressed: () {
          showBottomSheet(context, false);
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

class Recipe {
  int? id;
  String name;
  String description;
  String ingredient;
  String duration;
  String imageUrl;

  Recipe({
    this.id,
    required this.name,
    required this.description,
    required this.ingredient,
    required this.duration,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'ingredient': ingredient,
      'duration': duration,
      'imageUrl': imageUrl,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      ingredient: map['ingredient'],
      duration: map['duration'],
      imageUrl: map['imageUrl'],
    );
  }
}
