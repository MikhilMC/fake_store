// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:fake_store/screens/single_product/models/single_product_rating/single_product_rating.dart';
import 'package:fake_store/utils/utils.dart';

SingleProduct productModelFromJson(String str) =>
    SingleProduct.fromJson(json.decode(str));

String productModelToJson(SingleProduct data) => json.encode(data.toJson());

class SingleProduct {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final SingleProductRating rating;
  SingleProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  SingleProduct copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    SingleProductRating? rating,
  }) {
    return SingleProduct(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating.toMap(),
    };
  }

  factory SingleProduct.fromMap(Map<String, dynamic> map) {
    return SingleProduct(
      id: map['id'] as int,
      title: map['title'] as String,
      price: Utils.toDouble(map['price']),
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
      rating:
          SingleProductRating.fromMap(map['rating'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleProduct.fromJson(String source) =>
      SingleProduct.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SingleProduct(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(covariant SingleProduct other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.price == price &&
        other.description == description &&
        other.category == category &&
        other.image == image &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        price.hashCode ^
        description.hashCode ^
        category.hashCode ^
        image.hashCode ^
        rating.hashCode;
  }
}
