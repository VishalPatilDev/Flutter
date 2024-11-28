import 'package:flutter/material.dart';
import 'package:provider_demo/models/product_model.dart';

class ProductController with ChangeNotifier {
  List<ProductModel> listOfProducts = [];

  void addProductData({required ProductModel pObj}) {
    listOfProducts.add(pObj);
  }

  void addToFavorite({required int index}) {
    listOfProducts[index].isFavorite = !listOfProducts[index].isFavorite!;
    notifyListeners();
  }

  void addQuantity(int index) {
    listOfProducts[index].quantity = listOfProducts[index].quantity! + 1;
    notifyListeners();
  }

  void removeQuantity(int index) {
    listOfProducts[index].quantity = listOfProducts[index].quantity! - 1;
    notifyListeners();
  }
}
