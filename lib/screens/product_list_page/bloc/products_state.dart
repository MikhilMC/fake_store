part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = ProductsStateLoading;
  const factory ProductsState.empty() = ProductsStateEmpty;
  const factory ProductsState.success(List<Product> products) =
      ProductsStateSuccess;
  const factory ProductsState.error(String errorMessage) = ProductsStateError;
}
