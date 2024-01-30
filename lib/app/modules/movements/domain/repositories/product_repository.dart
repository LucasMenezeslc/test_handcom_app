import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}
