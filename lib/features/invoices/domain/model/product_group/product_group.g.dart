// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductGroup _$ProductGroupFromJson(Map<String, dynamic> json) =>
    _ProductGroup(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      discount: (json['discount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductGroupToJson(_ProductGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'discount': instance.discount,
    };
