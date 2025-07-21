// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentCondition _$PaymentConditionFromJson(Map<String, dynamic> json) =>
    _PaymentCondition(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PaymentConditionToJson(_PaymentCondition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
