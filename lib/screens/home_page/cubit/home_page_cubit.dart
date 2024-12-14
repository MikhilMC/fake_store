import 'dart:convert';
import 'dart:io';

import 'package:fake_store/screens/home_page/models/home_page_product/home_page_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fake_store/app_constants/app_urls.dart';
import 'package:http/http.dart' as http;

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(const HomePageState.initial());

  fetchProducts(
    bool needToSort,
    int? limit,
  ) async {
    emit(const HomePageState.loading());
    try {
      Map<String, dynamic> params = {};
      if (needToSort) {
        params['sort'] = 'desc';
      }
      if (limit != null && limit > 0) {
        params['limit'] = limit.toString();
      }
      // Construct the URL with query parameters
      final url = Uri.parse(AppUrls.getUrl("all")).replace(
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
        final products =
            decoded.map((item) => HomePageProduct.fromJson(item)).toList();

        emit(HomePageState.success(products));
      } else {
        emit(const HomePageState.error('Failed to load response'));
      }
    } on SocketException {
      emit(const HomePageState.error('Failed to load response'));
    } on HttpException {
      emit(const HomePageState.error('Failed to load response'));
    } on FormatException {
      emit(const HomePageState.error('Failed to load response'));
    } catch (e) {
      emit(const HomePageState.error('Failed to load response'));
    }
  }
}
