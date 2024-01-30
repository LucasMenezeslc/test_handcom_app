import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_handcom_app/app/modules/movements/data/repositories/product_repository_impl.dart';
import 'package:test_handcom_app/app/modules/movements/data/usecases/get_products_impl.dart';
import 'package:test_handcom_app/app/modules/movements/domain/repositories/product_repository.dart';
import 'package:test_handcom_app/app/modules/movements/domain/usecases/get_products.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/movements_page.dart';
import 'package:test_handcom_app/app/modules/movements/presenter/movements_store.dart';

class MovementsModule extends Module {
  @override
  final List<Bind> binds = [
    // Repositories
    Bind.lazySingleton<ProductRepository>(
      (i) => ProductRepositoryImpl(),
    ),

    // UseCases
    Bind.lazySingleton<GetProducts>(
      (i) => GetProductsImpl(
        productRepository: i(),
      ),
    ),

    // Store
    Bind.lazySingleton(
      (i) => MovementsStore(getProducts: i()),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const MovementsPage(),
    )
  ];
}
