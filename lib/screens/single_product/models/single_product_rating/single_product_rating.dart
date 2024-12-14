// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:fake_store/utils/utils.dart';

class SingleProductRating {
  final double rate;
  final int count;
  SingleProductRating({
    required this.rate,
    required this.count,
  });

  SingleProductRating copyWith({
    double? rate,
    int? count,
  }) {
    return SingleProductRating(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rate': rate,
      'count': count,
    };
  }

  factory SingleProductRating.fromMap(Map<String, dynamic> map) {
    return SingleProductRating(
      rate: Utils.toDouble(map['rate']),
      count: map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleProductRating.fromJson(String source) =>
      SingleProductRating.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SingleProductRating(rate: $rate, count: $count)';

  @override
  bool operator ==(covariant SingleProductRating other) {
    if (identical(this, other)) return true;

    return other.rate == rate && other.count == count;
  }

  @override
  int get hashCode => rate.hashCode ^ count.hashCode;
}
