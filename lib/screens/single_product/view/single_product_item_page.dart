import 'package:fake_store/screens/single_product/bloc/single_product_bloc.dart';
import 'package:fake_store/widgets/category_widget.dart';
import 'package:fake_store/widgets/error_message.dart';
import 'package:fake_store/widgets/expandable_text.dart';
import 'package:fake_store/widgets/loading_widget.dart';
import 'package:fake_store/widgets/not_found.dart';
import 'package:fake_store/widgets/ratings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleProductItemPage extends StatefulWidget {
  final int id;
  final String heroId;

  const SingleProductItemPage({
    super.key,
    required this.id,
    required this.heroId,
  });

  @override
  State<SingleProductItemPage> createState() => _SingleProductItemPageState();
}

class _SingleProductItemPageState extends State<SingleProductItemPage> {
  @override
  void initState() {
    super.initState();
    context.read<SingleProductBloc>().add(SingleProductFetched(id: widget.id));
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
        title: const Text(
          "Product Item Details",
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocBuilder<SingleProductBloc, SingleProductState>(
        builder: (context, state) {
          if (state is SingleProductFailure) {
            return ErrorMessage(
              errorMessage: state.errorMessage,
            );
          }

          if (state is SingleProductNotFound) {
            return const NotFound(
              notFoundMessage: "No product found",
            );
          }

          if (state is! SingleProductSuccess) {
            return const LoadingWidget();
          }

          final data = state.product;

          return Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(138, 60, 122, 1),
                          width: 2,
                        ),
                      ),
                      child: Hero(
                        tag: widget.heroId,
                        child: Image.network(data.image),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    data.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "\$${data.price}",
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CategoryWidget(category: data.category),
                  const SizedBox(
                    height: 10,
                  ),
                  RatingsWidget(
                    rate: data.rating.rate,
                    count: data.rating.count,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Product Description",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ExpandableText(textContent: data.description.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
