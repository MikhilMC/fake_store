import 'package:fake_store/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fake_store/screens/home_page/models/rating/rating.dart';

part 'home_page_product.freezed.dart';
part 'home_page_product.g.dart';

@freezed
class HomePageProduct with _$HomePageProduct {
  const factory HomePageProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
  }) = _HomePageProduct;

  factory HomePageProduct.fromJson(Map<String, dynamic> json) =>
      _$HomePageProductFromJson(json).copyWith(
        price: Utils.toDouble(json['price']),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating.toJson(),
      };
}
