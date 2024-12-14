part of 'single_product_bloc.dart';

@immutable
sealed class SingleProductState {}

final class SingleProductInitial extends SingleProductState {}

final class SingleProductLoading extends SingleProductState {}

final class SingleProductSuccess extends SingleProductState {
  final SingleProduct product;

  SingleProductSuccess({required this.product});
}

final class SingleProductFailure extends SingleProductState {
  final String errorMessage;

  SingleProductFailure(this.errorMessage);
}
