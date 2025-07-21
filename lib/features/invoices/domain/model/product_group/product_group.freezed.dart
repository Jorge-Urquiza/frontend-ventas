// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductGroup implements DiagnosticableTreeMixin {
  int get id;
  String get code;
  String get name;
  double? get discount;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductGroupCopyWith<ProductGroup> get copyWith =>
      _$ProductGroupCopyWithImpl<ProductGroup>(
          this as ProductGroup, _$identity);

  /// Serializes this ProductGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProductGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductGroup &&
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
    return 'ProductGroup(id: $id, code: $code, name: $name, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class $ProductGroupCopyWith<$Res> {
  factory $ProductGroupCopyWith(
          ProductGroup value, $Res Function(ProductGroup) _then) =
      _$ProductGroupCopyWithImpl;
  @useResult
  $Res call({int id, String code, String name, double? discount});
}

/// @nodoc
class _$ProductGroupCopyWithImpl<$Res> implements $ProductGroupCopyWith<$Res> {
  _$ProductGroupCopyWithImpl(this._self, this._then);

  final ProductGroup _self;
  final $Res Function(ProductGroup) _then;

  /// Create a copy of ProductGroup
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
class _ProductGroup with DiagnosticableTreeMixin implements ProductGroup {
  const _ProductGroup(
      {required this.id,
      required this.code,
      required this.name,
      this.discount});
  factory _ProductGroup.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final double? discount;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductGroupCopyWith<_ProductGroup> get copyWith =>
      __$ProductGroupCopyWithImpl<_ProductGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductGroupToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProductGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductGroup &&
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
    return 'ProductGroup(id: $id, code: $code, name: $name, discount: $discount)';
  }
}

/// @nodoc
abstract mixin class _$ProductGroupCopyWith<$Res>
    implements $ProductGroupCopyWith<$Res> {
  factory _$ProductGroupCopyWith(
          _ProductGroup value, $Res Function(_ProductGroup) _then) =
      __$ProductGroupCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String code, String name, double? discount});
}

/// @nodoc
class __$ProductGroupCopyWithImpl<$Res>
    implements _$ProductGroupCopyWith<$Res> {
  __$ProductGroupCopyWithImpl(this._self, this._then);

  final _ProductGroup _self;
  final $Res Function(_ProductGroup) _then;

  /// Create a copy of ProductGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? discount = freezed,
  }) {
    return _then(_ProductGroup(
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
