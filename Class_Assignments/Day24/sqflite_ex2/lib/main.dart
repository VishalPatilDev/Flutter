import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class Cricketer {
  final int jerNo;
  final String name;
  final double avg;

  Cricketer({required this.jerNo, required this.name, required this.avg});
  Map<String, dynamic> cricketerMap() {
    return {
      'jerNo': jerNo,
      'name': name,
      'avg': avg,
    };
  }
}

Future<void> insertCricketerData(Cricketer player) async {
  final localDB = await database;
  localDB.insert('Cricketer', player.cricketerMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Map<String, dynamic>>> getCricketerData() async {
  final localDB = await database;
  List<Map<String, dynamic>> mapEntry = await localDB.query(
    'Cricketer',
  );
  return mapEntry;
}

Future<void> deleteData(Cricketer Player) async {
  final localDB = await database;
  await localDB.delete(
    'Cricketer',
    where: "jerNo=?",
    whereArgs: [Player.jerNo],
  );
}

Future<void> updateData(Cricketer player) async {
  final localDB = await database;

  localDB.update(
    'Cricketer',
    player.cricketerMap(),
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}

void main() async {
  runApp(const MainApp());
  database = openDatabase(join(await getDatabasesPath(), "cricketDB.db"),
      version: 1, onCreate: (db, version) {
    db.execute('''CREATE TABLE Cricketer(
              jerNo INT PRIMARY KEY, 
              name TEXT,
              avg REAL
        )''');
  });

  Cricketer player1 = Cricketer(jerNo: 45, name: "Rohit", avg: 100);
  Cricketer player2 = Cricketer(jerNo: 18, name: "Virat", avg: 110);
  Cricketer player4 = Cricketer(jerNo: 7, name: "Dhoni", avg: 50);
  Cricketer player5 = Cricketer(jerNo: 88, name: "KL", avg: 100);

  await insertCricketerData(player1);
  await insertCricketerData(player2);
  await insertCricketerData(player4);
  await insertCricketerData(player5);
  List<Map<String, dynamic>> retVal = await getCricketerData();

  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }

  await deleteData(player1);
  print("After del");

  retVal = await getCricketerData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
    // print("hii");
  }

  Cricketer player3 = Cricketer(jerNo: 18, name: "Yash", avg: 200);
  await insertCricketerData(player3);
  print("Inserted New Data with same primary key 18");
  retVal = await getCricketerData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
    // print("hii");
  }

  player5 =
      Cricketer(jerNo: player5.jerNo, name: "pandya", avg: player5.avg + 5);
  await updateData(player5);
  print("After updated value");
  print(await getCricketerData());
  retVal = await getCricketerData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
    // print("hii");
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
