import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:technical_test/model/product_byId_model.dart';
import 'package:technical_test/model/product_model.dart';

Future<TopProductResponse> getProducts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    try {
      if (response.statusCode == 200) {
        return TopProductResponse.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<ProductDetailResponse> getProductByID(int id) async {
    final response = await http.get(Uri.parse('https://test.tradeasia.vn/api/test/productDetails/$id'));

    try {
      if (response.statusCode == 200) {
        return ProductDetailResponse.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      rethrow;
    }
  }
