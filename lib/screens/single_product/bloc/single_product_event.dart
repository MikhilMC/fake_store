part of 'single_product_bloc.dart';

@immutable
sealed class SingleProductEvent {}

final class SingleProductFetched extends SingleProductEvent {
  final int id;

  SingleProductFetched({required this.id});
}
