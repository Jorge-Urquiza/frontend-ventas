// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceLine _$InvoiceLineFromJson(Map<String, dynamic> json) => _InvoiceLine(
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      discount: (json['discount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      subtotal: (json['subtotal'] as num).toDouble(),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceLineToJson(_InvoiceLine instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
      'discount': instance.discount,
      'discountPercentage': instance.discountPercentage,
      'subtotal': instance.subtotal,
      'product': instance.product,
    };
