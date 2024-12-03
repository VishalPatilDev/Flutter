import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:player_sqflite/player.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
void insertPlayerData(Player pobj) async {
  Database localDB = await database;
  await localDB.insert(
    "Player",
    pobj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map<String, dynamic>>> getPlayerData() async {
  Database localDB = await database;
  List<Map<String, dynamic>> playerData = await localDB.query("Player");
  return playerData;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
      join(await getDatabasesPath(), "PlayerDataBase.db"),
      version: 1, onCreate: (db, version) async {
    await db.execute('''CREATE TABLE Player(
        playername TEXT,
        jerNo INT PRIMARY KEY,
        runs INT,
        avg  REAL
        )''');
  });

  Player pobj1 = Player(name: "Virat", jerNo: 18, runs: 30000, avg: 40.5);
  Player pobj2 = Player(name: "Rohit", jerNo: 5, runs: 4000, avg: 40.5);
  insertPlayerData(pobj1);
  insertPlayerData(pobj2);
  print(await getPlayerData());
}
