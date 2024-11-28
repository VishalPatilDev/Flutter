import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controllers/product_controller.dart';
import 'package:provider_demo/models/product_model.dart';
import 'package:provider_demo/view/product_display.dart';

class GetProductDetails extends StatelessWidget {
  GetProductDetails({super.key});

  final TextEditingController _productImageTextEditingController =
      TextEditingController();
  final TextEditingController _productNameTextEditingController =
      TextEditingController();
  final TextEditingController _productPriceTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Product Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _productImageTextEditingController,
            decoration: InputDecoration(
                hintText: 'Enter Image Url',
                enabledBorder: OutlineInputBorder(borderSide: BorderSide())),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _productNameTextEditingController,
            decoration: InputDecoration(
                hintText: 'Enter Name Of Product',
                enabledBorder: OutlineInputBorder(borderSide: BorderSide())),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _productPriceTextEditingController,
            decoration: InputDecoration(
                hintText: 'Enter Price Of Product',
                enabledBorder: OutlineInputBorder(borderSide: BorderSide())),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var tempObj = ProductModel(
                  productImage: _productImageTextEditingController.text.trim(),
                  productPrice: _productPriceTextEditingController.text.trim(),
                  productName: _productNameTextEditingController.text.trim(),
                  isFavorite: false,
                  quantity: 0,
                );
                Provider.of<ProductController>(context, listen: false)
                    .addProductData(pObj: tempObj);
                _productImageTextEditingController.clear();
                _productPriceTextEditingController.clear();
                _productNameTextEditingController.clear();
              },
              child: Text("Add")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDisplay()));
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
