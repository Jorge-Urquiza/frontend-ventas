import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_condition.freezed.dart';

part 'payment_condition.g.dart';

@freezed
abstract class PaymentCondition with _$PaymentCondition {
  const factory PaymentCondition({
    required int id,
    required String name,
  }) = _PaymentCondition;

  factory PaymentCondition.fromJson(Map<String, Object?> json) =>
      _$PaymentConditionFromJson(json);
}
