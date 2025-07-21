import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_group.freezed.dart';

part 'client_group.g.dart';

@freezed
abstract class ClientGroup with _$ClientGroup {
  const factory ClientGroup({
    required int id,
    required String code,
    required String name,
    double? discount
  }) = _ClientGroup;

  factory ClientGroup.fromJson(Map<String, Object?> json) => _$ClientGroupFromJson(json);
}