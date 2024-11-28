import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controllers/product_controller.dart';
import 'package:provider_demo/controllers/wish_list_controller.dart';
import 'package:provider_demo/view/wishlist_display.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WishListDisplay()));
                },
                child: Icon(Icons.favorite))
          ],
          backgroundColor: Colors.blue,
          title: Text("Product Display"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: providerObj.listOfProducts.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(
                      "${providerObj.listOfProducts[index].productImage}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("${providerObj.listOfProducts[index].productName}"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("${providerObj.listOfProducts[index].productPrice}"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Consumer<ProductController>(
                        builder: (context, provider, child) {
                          return GestureDetector(
                            onTap: () {
                              providerObj.addToFavorite(index: index);

                              if (providerObj
                                  .listOfProducts[index].isFavorite!) {
                                Provider.of<WishListController>(context,
                                        listen: false)
                                    .addDataToWishlist(
                                        obj: providerObj.listOfProducts[index]);
                              }
                            },
                            child: Icon(
                              (providerObj.listOfProducts[index].isFavorite!)
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
                              providerObj.addQuantity(index);
                            },
                            child: Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Consumer<ProductController>(
                              builder: (context, value, child) {
                            return Text(
                                "${providerObj.listOfProducts[index].quantity}");
                          }),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              providerObj.removeQuantity(index);
                            },
                            child: Icon(Icons.remove),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              );
            }));
  }
}
