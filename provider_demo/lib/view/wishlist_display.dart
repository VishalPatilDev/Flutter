import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controllers/product_controller.dart';

class WishListDisplay extends StatelessWidget {
  const WishListDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist Display"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: providerObj.listOfProducts.length,
          itemBuilder: ((context, index) {
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
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          })),
    );
  }
}
