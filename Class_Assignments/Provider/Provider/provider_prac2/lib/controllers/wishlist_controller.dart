import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_prac2/models/product_model.dart';

class WishListController with ChangeNotifier {
  List<ProductModel> listOfWishlistProducts = [];
  void addDataToWishlist({ProductModel? obj}) {
    listOfWishlistProducts.add(obj!);
    log("PRODUCT ADDED TO WISHLIST");
  }

  void removeWishList({required int index}) {
    listOfWishlistProducts.removeAt(index);
    notifyListeners();
  }
}
