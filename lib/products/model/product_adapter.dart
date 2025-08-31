import 'package:hive/hive.dart';
import 'product.dart';

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 0;

  @override
  Product read(BinaryReader reader) {
    return Product(
      id: reader.readString(),
      name: reader.readString(),
      obs: reader.readString(),
      category: reader.readString(),
      isKilograms: reader.readBool(),
      isPurchased: reader.readBool(),
      price: reader.readDouble(),
      amount: reader.readDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.obs);
    writer.writeString(obj.category);
    writer.writeBool(obj.isKilograms);
    writer.writeBool(obj.isPurchased);
    writer.writeDouble(obj.price ?? 0.0);
    writer.writeDouble(obj.amount ?? 0.0);
  }
}
