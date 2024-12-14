import 'package:fake_store/screens/home_page/cubit/home_page_cubit.dart';
import 'package:fake_store/screens/home_page/view/home_page.dart';
import 'package:fake_store/screens/product_list_page/bloc/products_bloc.dart';
import 'package:fake_store/screens/single_product/bloc/single_product_bloc.dart';
import 'package:fake_store/screens/single_product/services/single_product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageCubit>(
          create: (context) => HomePageCubit(),
        ),
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider(
          create: (context) => SingleProductBloc(
            SingleProductService(),
          ),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
