import 'package:flutter/material.dart';
import 'package:provider_demo/models/product_model.dart';

class WishListController with ChangeNotifier {
  List<ProductModel> listOfWishlistProducts = [];

  void addDataToWishlist({ProductModel? obj}) {
    listOfWishlistProducts.add(obj!);
    notifyListeners();
  }

  void removeDataFromWishlist({ProductModel? obj}) {
    listOfWishlistProducts.remove(obj!);
    notifyListeners();
  }
}
