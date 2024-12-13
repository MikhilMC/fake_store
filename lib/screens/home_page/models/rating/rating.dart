import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fake_store/utils/utils.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json).copyWith(
        rate: Utils.toDouble(json['rate']),
      );

  @override
  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
