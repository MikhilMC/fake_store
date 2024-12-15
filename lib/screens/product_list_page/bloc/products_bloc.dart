import 'dart:convert';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:fake_store/app_constants/app_urls.dart';
import 'package:fake_store/screens/product_list_page/models/product/product.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const _Initial()) {
    on<_ProductsFetched>((event, emit) async {
      emit(const ProductsState.loading());
      try {
        Map<String, dynamic> params = {};
        if (event.needToSort) {
          params['sort'] = 'desc';
        }

        // Construct the URL with query parameters
        final url = Uri.parse(AppUrls.getUrl(event.type)).replace(
          queryParameters: params,
        );

        final resp = await http.get(
          url,
          headers: <String, String>{
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        );

        if (resp.statusCode == 200) {
          final List<dynamic> decoded = jsonDecode(resp.body);
          if (decoded.isEmpty) {
            emit(const ProductsState.empty());
          } else {
            final products =
                decoded.map((item) => Product.fromJson(item)).toList();

            emit(ProductsState.success(products));
          }
        } else {
          emit(const ProductsState.error('Failed to load response'));
        }
      } on SocketException {
        emit(const ProductsState.error('Failed to load response'));
      } on HttpException {
        emit(const ProductsState.error('Failed to load response'));
      } on FormatException {
        emit(const ProductsState.error('Failed to load response'));
      } catch (e) {
        emit(const ProductsState.error('Failed to load response'));
      }
    });
  }
}
