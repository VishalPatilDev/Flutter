import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/controllers/product_controller.dart';
import 'package:provider_prac/view/get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProductController();
      },
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: GetProductDetails(),
      ),
    );
  }
}
