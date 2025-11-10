import 'package:shophub_project/data/constrant.dart';

class Product {
  final String name;
  final String imageAsset;

  const Product({required this.name, required this.imageAsset});
}

const List<Product> allProducts = [
  Product(
    name: KProductName.bluetoothHeadphoneBlack,
    imageAsset: KProductImage.bluetoothHeadphoneBlack,
  ),
  Product(
    name: KProductName.bluetoothHeadphone,
    imageAsset: KProductImage.bluetoothHeadphone,
  ),
  Product(
    name: KProductName.headphoneWhite,
    imageAsset: KProductImage.headphoneWhite,
  ),
  Product(name: KProductName.headset, imageAsset: KProductImage.headset),
];
