import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/product_controller.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN PRODUCT DISPLAY BUILD");
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Display"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.network("${providerObj.productModelObj?.productImage}"),
              SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productName}"),
              SizedBox(height: 10),
              Text("${providerObj.productModelObj?.price}"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// IS FAVORITE
                  Consumer<ProductController>(
                    builder: (context, provider, child) {
                      log("IN FAV CONSUMER");
                      return GestureDetector(
                        onTap: () {
                          providerObj.addToFavorite();
                        },
                        child: Icon(
                          (providerObj.productModelObj!.isFavorite!)
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          providerObj.addQuantity();
                        },
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                      SizedBox(width: 5),

                      ///QUANTITY
                      Consumer<ProductController>(
                        builder: (context, value, child) {
                          log("IN QUANTITY");
                          return Text(
                              "${providerObj.productModelObj?.quantity}");
                        },
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          providerObj.removeQuantity();
                        },
                        child: Icon(Icons.remove),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
