// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePageProduct _$HomePageProductFromJson(Map<String, dynamic> json) {
  return _HomePageProduct.fromJson(json);
}

/// @nodoc
mixin _$HomePageProduct {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;

  /// Serializes this HomePageProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageProductCopyWith<HomePageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageProductCopyWith<$Res> {
  factory $HomePageProductCopyWith(
          HomePageProduct value, $Res Function(HomePageProduct) then) =
      _$HomePageProductCopyWithImpl<$Res, HomePageProduct>;
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      String description,
      String category,
      String image,
      Rating rating});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$HomePageProductCopyWithImpl<$Res, $Val extends HomePageProduct>
    implements $HomePageProductCopyWith<$Res> {
  _$HomePageProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ) as $Val);
  }

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageProductImplCopyWith<$Res>
    implements $HomePageProductCopyWith<$Res> {
  factory _$$HomePageProductImplCopyWith(_$HomePageProductImpl value,
          $Res Function(_$HomePageProductImpl) then) =
      __$$HomePageProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      String description,
      String category,
      String image,
      Rating rating});

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$HomePageProductImplCopyWithImpl<$Res>
    extends _$HomePageProductCopyWithImpl<$Res, _$HomePageProductImpl>
    implements _$$HomePageProductImplCopyWith<$Res> {
  __$$HomePageProductImplCopyWithImpl(
      _$HomePageProductImpl _value, $Res Function(_$HomePageProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$HomePageProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageProductImpl implements _HomePageProduct {
  const _$HomePageProductImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory _$HomePageProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageProductImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;
  @override
  final Rating rating;

  @override
  String toString() {
    return 'HomePageProduct(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, price, description, category, image, rating);

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageProductImplCopyWith<_$HomePageProductImpl> get copyWith =>
      __$$HomePageProductImplCopyWithImpl<_$HomePageProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageProductImplToJson(
      this,
    );
  }
}

abstract class _HomePageProduct implements HomePageProduct {
  const factory _HomePageProduct(
      {required final int id,
      required final String title,
      required final double price,
      required final String description,
      required final String category,
      required final String image,
      required final Rating rating}) = _$HomePageProductImpl;

  factory _HomePageProduct.fromJson(Map<String, dynamic> json) =
      _$HomePageProductImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  String get category;
  @override
  String get image;
  @override
  Rating get rating;

  /// Create a copy of HomePageProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageProductImplCopyWith<_$HomePageProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
