// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClientGroup _$ClientGroupFromJson(Map<String, dynamic> json) => _ClientGroup(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      discount: (json['discount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ClientGroupToJson(_ClientGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'discount': instance.discount,
    };
