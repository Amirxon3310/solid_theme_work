// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:solid_theme_work/models/product_model.dart';
// import 'package:http/http.dart' as http;

// class ProductController extends ChangeNotifier {
//   List<ProductModel> products = [];
//   bool loading = false;
//   Future<void> getProducts(String maxSumm) async {
//     loading = true;
//     products = [];
//     notifyListeners();
//     try {
//       final url = Uri.parse(
//           'https://api.elaro.uz/api/categories/3?price_min=10000000&price_max=$maxSumm&color=#050505');
//       final respone = await http.get(url);
//       final decodedData = jsonDecode(respone.body) as Map;
//       List<ProductModel> newProduct = [];
//       decodedData.forEach((key, value) {
//         print(value);
//         newProduct.add(ProductModel.fromMap(value));
//       });
//       products = newProduct;
//       loading = false;
//       notifyListeners();
//     } catch (e, stack) {
//       print(e);
//       print(stack);
//       loading = false;
//       notifyListeners();
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:solid_theme_work/models/product_model.dart';

class ProductController extends ChangeNotifier {
  final http.Client client;
  ProductController({required this.client});

  List<ProductModel> products = [];
  bool loading = false;

  Future<void> getProducts(String maxSumm) async {
    loading = true;
    products = [];
    notifyListeners();
    try {
      final url = Uri.parse(
          'https://api.elaro.uz/api/categories/3?price_min=10000000&price_max=$maxSumm&color=#050505');
      final response = await client.get(url);
      final decodedData = jsonDecode(response.body) as Map;
      List<ProductModel> newProduct = [];
      decodedData.forEach((key, value) {
        newProduct.add(ProductModel.fromMap(value));
      });
      products = newProduct;
      loading = false;
      notifyListeners();
    } catch (e, stack) {
      print(e);
      print(stack);
      loading = false;
      notifyListeners();
    }
  }
}
