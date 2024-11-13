import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Zomato {
  int? orderNo;
  final String custName;
  final String hotelName;
  final String food;
  final double bill;

  Zomato(
      {this.orderNo,
      required this.custName,
      required this.hotelName,
      required this.food,
      required this.bill});
  Map<String, dynamic> zomatoMap() {
    return {
      'custName': custName,
      'hotelName': hotelName,
      'food': food,
      'bill': bill
    };
  }

  @override
  String toString() {
    return '{orderNo:$orderNo,custName:$custName,hotelName:$hotelName,food:$food,bill:$bill}';
  }
}

dynamic database;
Future<void> insertOrderData(Zomato obj) async {
  final localDB = await database;

  await localDB.insert(
    "OrderFood",
    obj.zomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Zomato>> getOrderData() async {
  final localDB = await database;
  List<Map<String, dynamic>> orderMap = await localDB.query("OrderFood");
  return List.generate(orderMap.length, (i) {
    return Zomato(
      orderNo: orderMap[i]['orderNo'],
      custName: orderMap[i]['custName'],
      hotelName: orderMap[i]['hotelName'],
      food: orderMap[i]['food'],
      bill: orderMap[i]['bill'],
    );
  });
}

Future<void> deleteOrderData(int data) async {
  final localDB = await database;

  await localDB.delete(
    "OrderFood",
    where: "orderNo = ?",
    whereArgs: [data],
  );
}

Future<void> updateOrderData(Zomato obj) async {
  final localDB = await database;
  await localDB.update("OrderFood", obj.zomatoMap(),
      where: 'orderNo=?', whereArgs: [obj.orderNo]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "BlinkDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
CREATE TABLE OrderFood(
orderNo INTEGER PRIMARY KEY,
custName TEXT,
hotelName TEXT,
food TEXT,
bill REAL
)
''');
    },
  );

  Zomato order1 = Zomato(
      custName: "Ashish",
      hotelName: "Ganesh Bhel",
      food: "Bhel,Ragda Patice",
      bill: 530.50);

  insertOrderData(order1);
  Zomato order2 = Zomato(
      custName: "Kanha",
      hotelName: "SP Biryani",
      food: "Biryani,Rassa",
      bill: 830.00);
  insertOrderData(order2);
  print(await getOrderData());
}
