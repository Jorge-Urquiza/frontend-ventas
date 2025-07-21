import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

part 'product_calculation_response.freezed.dart';

part 'product_calculation_response.g.dart';

@freezed
abstract class ProductCalculationResponse with _$ProductCalculationResponse {
  const factory ProductCalculationResponse({
    // required int id,
    // required double price,
    required int quantity,
    required double discount,
    required double discountPercentage,
    required double subtotal,
    required Product product,
  }) = _ProductCalculationResponse;

  factory ProductCalculationResponse.fromJson(Map<String, Object?> json) =>
      _$ProductCalculationResponseFromJson(json);
}
