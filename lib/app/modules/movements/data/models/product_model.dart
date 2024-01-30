import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.title,
    required super.code,
    required super.or,
    required super.lot,
    required super.codeBar,
    required super.quantity,
    required super.status,
    required super.wasMoved,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      title: map['title'] as String,
      code: map['code'] as String,
      or: map['or'] as String,
      lot: map['lot'] as String,
      codeBar: map['codeBar'] as String,
      quantity: map['quantity'] as double,
      status: map['status'] as bool,
      wasMoved: map['wasMoved'] as bool,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel.fromMap(map);
  }
}
