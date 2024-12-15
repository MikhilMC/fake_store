// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fake_store/widgets/error_message.dart';
import 'package:fake_store/widgets/loading_widget.dart';
import 'package:fake_store/widgets/not_found.dart';
import 'package:fake_store/widgets/products_grid_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fake_store/screens/product_list_page/bloc/products_bloc.dart';
// import 'package:fake_store/screens/product_list_page/bloc/products_state.dart';

class ProductListPage extends StatefulWidget {
  final String pageType;
  final String pageTitle;
  const ProductListPage({
    super.key,
    required this.pageType,
    required this.pageTitle,
  });

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsBloc>().add(
          ProductsEvent.productsFetched(
            widget.pageType,
            false,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(138, 60, 122, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(widget.pageTitle),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state is ProductsStateError) {
            return ErrorMessage(
              errorMessage: state.errorMessage,
            );
          }

          if (state is ProductsStateEmpty) {
            return const NotFound(
              notFoundMessage: "Products list empty",
            );
          }

          if (state is! ProductsStateSuccess) {
            return const LoadingWidget();
          }

          return Padding(
            padding: const EdgeInsets.all(8),
            child: ProductsGridBloc(products: state.products),
          );
        },
      ),
    );
  }
}
