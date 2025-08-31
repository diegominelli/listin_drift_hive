import 'package:hive_flutter/hive_flutter.dart';
import 'package:listin_drift_hive/products/model/product.dart';

class ProductsBoxHandler {
  late Box _box;

  Future<void> openBox(String listinId) async {
    _box = await Hive.openBox(listinId);
  }

  Future<void> closeBox() async {
    return await _box.close();
  }

  Future<int> insertProduct(Product product) async {
    return await _box.add(product);
  }

  List<Product> getProducts() {
    return _box.values.map((elemento) => elemento as Product).toList();
  }

  Future<void> updateProduct(Product product) async {
    await product.save();
  }
}
