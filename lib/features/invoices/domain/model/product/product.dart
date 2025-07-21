import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/product_group/product_group.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String code,
    required String name,
    required double price,
    required ProductGroup productGroup
    // required String location,
    // required String address,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
