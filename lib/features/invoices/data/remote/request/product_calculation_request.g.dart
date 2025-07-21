// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_calculation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCalculationRequest _$ProductCalculationRequestFromJson(
        Map<String, dynamic> json) =>
    _ProductCalculationRequest(
      clientId: (json['clientId'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ProductCalculationRequestToJson(
        _ProductCalculationRequest instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
