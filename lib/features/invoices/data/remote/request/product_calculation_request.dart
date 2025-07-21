import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_calculation_request.freezed.dart';

part 'product_calculation_request.g.dart';

@freezed
abstract class ProductCalculationRequest with _$ProductCalculationRequest {
  const factory ProductCalculationRequest({
    required int clientId,
    required int productId,
    required int quantity,
  }) = _ProductCalculationRequest;

  factory ProductCalculationRequest.fromJson(Map<String, Object?> json) =>
      _$ProductCalculationRequestFromJson(json);
}
