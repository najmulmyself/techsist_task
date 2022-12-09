import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:techsist_task/modal/data.dart';

class ApiService {
  final baseUrl =
      "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&search=rice";
  Future<List<Result>> getProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['products']['results'];
      // print(data['data']['products']['results']);
      return data.map((json) => Result.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
