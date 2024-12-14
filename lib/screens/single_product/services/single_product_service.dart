import 'dart:convert';
import 'dart:io';

import 'package:fake_store/app_constants/app_urls.dart';
import 'package:fake_store/screens/single_product/models/single_product/single_product.dart';
import 'package:http/http.dart' as http;

class SingleProductService {
  Future<SingleProduct> singleProduct({required int id}) async {
    try {
      // Construct the URL with query parameters
      final url = Uri.parse("${AppUrls.getUrl("single product")}/$id").replace(
        queryParameters: {},
      );

      final resp = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );

      print("Status code: ${resp.statusCode}");
      print("Response Body: ${resp.body}");

      final Map<String, dynamic> decoded = jsonDecode(resp.body);
      if (resp.statusCode == 200) {
        final response = SingleProduct.fromMap(decoded);
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
}
