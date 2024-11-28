import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controllers/product_controller.dart';
import 'package:provider_demo/controllers/wish_list_controller.dart';
import 'package:provider_demo/get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductController();
          },
          child: MaterialApp(
            home: GetProductDetails(),
          ),
        ),
        ChangeNotifierProvider(create: (context) {
          return WishListController();
        }),
      ],
      child: MaterialApp(home: GetProductDetails()),
    );
  }
}
