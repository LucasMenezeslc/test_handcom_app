import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/domain/repositories/product_repository.dart';
import 'package:test_handcom_app/app/modules/movements/domain/usecases/get_products.dart';

class GetProductsImpl implements GetProducts {
  final ProductRepository _productRepository;

  GetProductsImpl({
    required ProductRepository productRepository,
  }) : _productRepository = productRepository;

  @override
  Future<List<Product>> execute() async {
    return await _productRepository.getProducts();
  }
}
