// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:todoapp_advance/main.dart';

// dynamic database;
// Future<void> insertOrderData(ToDoModelClass obj) async {
//   final localDB = await database;

//   await localDB.insert(
//     "ToDo",
//     obj.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// Future<List<ToDoModelClass>> getOrderData() async {
//   final localDB = await database;
//   List<Map<String, dynamic>> mapEntry = await localDB.query("ToDo");
//   return List.generate(mapEntry.length, (i) {
//     return ToDoModelClass(
//       taskId: mapEntry[i]['taskId'],
//       title: mapEntry[i]['title'],
//       description: mapEntry[i]['description'],
//       date: mapEntry[i]['date'],
//     );
//   });
// }

// Future<void> deleteOrderData(int data) async {
//   final localDB = await database;

//   await localDB.delete(
//     "ToDo",
//     where: "taskId = ?",
//     whereArgs: [data],
//   );
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   database = openDatabase(
//     join(await getDatabasesPath(), "ToDoDB.db"),
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute('''
// CREATE TABLE ToDoList(
// taskId INTEGER PRIMARY KEY,
// title TEXT,
// description TEXT,
// date TEXT,
// )
// ''');
//     },
//   );

//   ToDoModelClass obj1 = ToDoModelClass(
//     title: 'title',
//     description: 'description',
//     date: 'date',
//   );

//   insertOrderData(obj1);

//   print(await getOrderData());
// }
