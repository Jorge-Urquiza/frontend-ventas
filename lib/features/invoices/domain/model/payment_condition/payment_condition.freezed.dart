// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentCondition implements DiagnosticableTreeMixin {
  int get id;
  String get name;

  /// Create a copy of PaymentCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentConditionCopyWith<PaymentCondition> get copyWith =>
      _$PaymentConditionCopyWithImpl<PaymentCondition>(
          this as PaymentCondition, _$identity);

  /// Serializes this PaymentCondition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PaymentCondition'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentCondition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentCondition(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $PaymentConditionCopyWith<$Res> {
  factory $PaymentConditionCopyWith(
          PaymentCondition value, $Res Function(PaymentCondition) _then) =
      _$PaymentConditionCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$PaymentConditionCopyWithImpl<$Res>
    implements $PaymentConditionCopyWith<$Res> {
  _$PaymentConditionCopyWithImpl(this._self, this._then);

  final PaymentCondition _self;
  final $Res Function(PaymentCondition) _then;

  /// Create a copy of PaymentCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentCondition
    with DiagnosticableTreeMixin
    implements PaymentCondition {
  const _PaymentCondition({required this.id, required this.name});
  factory _PaymentCondition.fromJson(Map<String, dynamic> json) =>
      _$PaymentConditionFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of PaymentCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentConditionCopyWith<_PaymentCondition> get copyWith =>
      __$PaymentConditionCopyWithImpl<_PaymentCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentConditionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PaymentCondition'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentCondition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentCondition(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PaymentConditionCopyWith<$Res>
    implements $PaymentConditionCopyWith<$Res> {
  factory _$PaymentConditionCopyWith(
          _PaymentCondition value, $Res Function(_PaymentCondition) _then) =
      __$PaymentConditionCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$PaymentConditionCopyWithImpl<$Res>
    implements _$PaymentConditionCopyWith<$Res> {
  __$PaymentConditionCopyWithImpl(this._self, this._then);

  final _PaymentCondition _self;
  final $Res Function(_PaymentCondition) _then;

  /// Create a copy of PaymentCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_PaymentCondition(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
