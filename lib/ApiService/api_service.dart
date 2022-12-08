import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:techsist_task/modal/data.dart';

class ApiService{
  final baseUrl = "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=rice";
  Future<ProductDataModel> getProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return ProductDataModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data!');
    }
  }
}