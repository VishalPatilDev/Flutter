import 'package:flutter/material.dart';
import 'package:food_app/splash_screen.dart';

dynamic database;

void main() async {
  // print(await fetchRecipes());
  // WidgetsFlutterBinding.ensureInitialized();
  // database = openDatabase(
  //   join(await getDatabasesPath(), "RecipieDB.db"),
  //   version: 1,
  //   onCreate: (db, version) {
  //     db.execute('''CREATE TABLE Recipie(
  //       id INT PRIMARY KEY,
  //       name TEXT ,
  //       description TEXT,
  //       ingridiant TEXT,
  //       'duration' TEXT,
  //       imageUrl TEXT,
  //       )''');
  //   },
  // );

  runApp(const MyApp());
  // print(await getData());
}

// Future<void> insertData(Recipie recipieObj) async {
//   final localDB = await database;
//   localDB.insert('Recipie', recipieObj.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace);
// }

// Future<void> deleteData(int data) async {
//   final localDB = await database;
//   await localDB.delete('Recipie', where: "id = ?", whereArgs: [data]);
// }

// Future<void> updateData(Recipie recipieObj) async {
//   final localDB = await database;
//   await localDB.update(
//     'Recipie',
//     recipieObj.toMap(),
//     where: "id =?",
//     whereArgs: [recipieObj.id],
//   );
// }

// Future getData() async {
//   final localDB = await database;
//   List<Map<String, dynamic>> recipieMap = await localDB.query("Recipie");
//   return List.generate(recipieMap.length, (index) {
//     return Recipie(
//         name: recipieMap[index]['name'],
//         description: recipieMap[index]['description'],
//         ingridiant: recipieMap[index]['ingridiant'],
//         duration: recipieMap[index]['duration'],
//         imageUrl: recipieMap[index]['imageUrl']);
//   });
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
