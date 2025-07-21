// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
      nit: json['nit'] as String,
      businessName: json['businessName'] as String,
      total: (json['total'] as num).toDouble(),
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      invoiceLines: (json['invoiceLines'] as List<dynamic>?)
          ?.map((e) => InvoiceLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentCondition: json['paymentCondition'] == null
          ? null
          : PaymentCondition.fromJson(
              json['paymentCondition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
      'nit': instance.nit,
      'businessName': instance.businessName,
      'total': instance.total,
      'client': instance.client,
      'invoiceLines': instance.invoiceLines,
      'paymentCondition': instance.paymentCondition,
    };
