import 'dart:convert';
import 'dart:io';

import 'package:fake_store/models/product_model.dart';
import 'package:fake_store/app_constants/app_urls.dart';
import 'package:http/http.dart' as http;

Future<ProductModel> mensClothingProductsList({
  required bool needToSort,
  int? limit,
}) async {
  try {
    Map<String, dynamic> params = {};
    if (needToSort) {
      params['sort'] = 'desc';
    }
    if (limit != null) {
      params['limit'] = limit;
    }

    final url = Uri.parse(AppUrls.mensClothingProducts).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    final Map<String, dynamic> decoded = jsonDecode(resp.body);
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
