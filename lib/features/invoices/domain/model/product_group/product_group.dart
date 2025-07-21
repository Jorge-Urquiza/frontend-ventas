import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_group.freezed.dart';

part 'product_group.g.dart';

@freezed
abstract class ProductGroup with _$ProductGroup {
  const factory ProductGroup({
    required int id,
    required String code,
    required String name,
    double? discount
  }) = _ProductGroup;

  factory ProductGroup.fromJson(Map<String, Object?> json) => _$ProductGroupFromJson(json);
}