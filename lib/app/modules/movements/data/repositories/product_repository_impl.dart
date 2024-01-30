import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_handcom_app/app/modules/movements/data/models/product_model.dart';
import 'package:test_handcom_app/app/modules/movements/domain/entities/product.dart';
import 'package:test_handcom_app/app/modules/movements/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/jsons/products.json');

      List<Map<String, dynamic>> jsonList =
          (json.decode(jsonString) as List<dynamic>)
              .cast<Map<String, dynamic>>();

      if (jsonList.isEmpty) {
        throw Exception("O arquivo JSON está vazio.");
      }

      List<Product> result =
          jsonList.map((json) => ProductModel.fromJson(json)).toList();

      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
