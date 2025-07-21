// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientGroup implements DiagnosticableTreeMixin {
  int get id;
  String get code;
  String get name;
  double? get discount;

  /// Create a copy of ClientGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientGroupCopyWith<ClientGroup> get copyWith =>
      _$ClientGroupCopyWithImpl<ClientGroup>(this as ClientGroup, _$identity);

  /// Serializes this ClientGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ClientGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, discount);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientGroup(id: $id, code: $code, name: $name, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class $ClientGroupCopyWith<$Res> {
  factory $ClientGroupCopyWith(
          ClientGroup value, $Res Function(ClientGroup) _then) =
      _$ClientGroupCopyWithImpl;
  @useResult
  $Res call({int id, String code, String name, double? discount});
}

/// @nodoc
class _$ClientGroupCopyWithImpl<$Res> implements $ClientGroupCopyWith<$Res> {
  _$ClientGroupCopyWithImpl(this._self, this._then);

  final ClientGroup _self;
  final $Res Function(ClientGroup) _then;

  /// Create a copy of ClientGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? discount = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClientGroup with DiagnosticableTreeMixin implements ClientGroup {
  const _ClientGroup(
      {required this.id,
      required this.code,
      required this.name,
      this.discount});
  factory _ClientGroup.fromJson(Map<String, dynamic> json) =>
      _$ClientGroupFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final double? discount;

  /// Create a copy of ClientGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientGroupCopyWith<_ClientGroup> get copyWith =>
      __$ClientGroupCopyWithImpl<_ClientGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClientGroupToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ClientGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, discount);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientGroup(id: $id, code: $code, name: $name, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class _$ClientGroupCopyWith<$Res>
    implements $ClientGroupCopyWith<$Res> {
  factory _$ClientGroupCopyWith(
          _ClientGroup value, $Res Function(_ClientGroup) _then) =
      __$ClientGroupCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String code, String name, double? discount});
}

/// @nodoc
class __$ClientGroupCopyWithImpl<$Res> implements _$ClientGroupCopyWith<$Res> {
  __$ClientGroupCopyWithImpl(this._self, this._then);

  final _ClientGroup _self;
  final $Res Function(_ClientGroup) _then;

  /// Create a copy of ClientGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? discount = freezed,
  }) {
    return _then(_ClientGroup(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
