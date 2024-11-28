class ProductModel {
  String? productImage;
  String? productPrice;
  String? productName;
  bool? isFavorite = false;
  int? quantity = 0;

  ProductModel(
      {required this.productImage,
      required this.productPrice,
      required this.productName,
      required this.isFavorite,
      required this.quantity});
}
