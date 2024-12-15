import 'package:fake_store/screens/single_product/models/single_product/single_product.dart';
import 'package:fake_store/screens/single_product/services/single_product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_product_event.dart';
part 'single_product_state.dart';

class SingleProductBloc extends Bloc<SingleProductEvent, SingleProductState> {
  final SingleProductService singleProductService;
  SingleProductBloc(this.singleProductService) : super(SingleProductInitial()) {
    on<SingleProductFetched>(
      (event, emit) async {
        emit(SingleProductLoading());
        try {
          final product = await singleProductService.singleProduct(
            id: event.id,
          );
          if (product == null) {
            emit(SingleProductNotFound());
          } else {
            emit(SingleProductSuccess(product: product));
          }
        } catch (e) {
          emit(SingleProductFailure(e.toString()));
        }
      },
    );
  }
}
