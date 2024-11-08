import 'dart:convert';
import 'dart:io';

import 'package:fake_store/models/product_model.dart';
import 'package:fake_store/app_constants/app_urls.dart';
import 'package:http/http.dart' as http;

Future<ProductModel> womensClothingProductsList(
    {required int limit, required bool needToSort}) async {
  try {
    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.womensClothingProducts).replace(
      queryParameters:
          needToSort ? {'limit': limit, 'sort': 'desc'} : {'limit': limit},
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    final Map<String, dynamic> decoded = jsonDecode(resp.body);
    print(resp.body);
    if (resp.statusCode == 200) {
      final response = ProductModel.fromJson(decoded);
      return response;
    } else {
      throw Exception('Failed to load response');
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
