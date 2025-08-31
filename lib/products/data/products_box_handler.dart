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

  insertProduct(Product product) {}
}
