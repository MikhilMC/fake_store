// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageProductImpl _$$HomePageProductImplFromJson(
        Map<String, dynamic> json) =>
    _$HomePageProductImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomePageProductImplToJson(
        _$HomePageProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };
