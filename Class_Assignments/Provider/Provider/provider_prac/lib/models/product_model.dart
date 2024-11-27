class ProductModel {
  String? productImage;
  String? productName;
  String? price;
  bool? isFavorite = false;
  int? quantity = 0;
  ProductModel({
    this.isFavorite,
    this.price,
    this.productImage,
    this.productName,
    this.quantity,
  });
}
