import 'package:currency_converter/currency_converter_material_page.dart';
// import './currency_converter_material_page.dart';   --> relative importing
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //const means the widget instance that we've created
  //over here ie. MyApp doesn't need to be recreated every single time
}
//Types of widgets
// 1.StatelessWidget --State Immutable.
// 2.StatefulWidget  --State Mutable.

//1. Material Design (android)
//2.Cupertino Design (ios)

class MyApp extends StatelessWidget {
  // const MyApp(Key? key) : super(key: key);
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPage(),
    );
  }
}
