// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_calculation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCalculationResponse _$ProductCalculationResponseFromJson(
        Map<String, dynamic> json) =>
    _ProductCalculationResponse(
      quantity: (json['quantity'] as num).toInt(),
      discount: (json['discount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      subtotal: (json['subtotal'] as num).toDouble(),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCalculationResponseToJson(
        _ProductCalculationResponse instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'discount': instance.discount,
      'discountPercentage': instance.discountPercentage,
      'subtotal': instance.subtotal,
      'product': instance.product,
    };
