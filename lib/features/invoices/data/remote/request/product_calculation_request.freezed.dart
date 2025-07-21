// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_calculation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCalculationRequest implements DiagnosticableTreeMixin {
  int get clientId;
  int get productId;
  int get quantity;

  /// Create a copy of ProductCalculationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCalculationRequestCopyWith<ProductCalculationRequest> get copyWith =>
      _$ProductCalculationRequestCopyWithImpl<ProductCalculationRequest>(
          this as ProductCalculationRequest, _$identity);

  /// Serializes this ProductCalculationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProductCalculationRequest'))
      ..add(DiagnosticsProperty('clientId', clientId))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductCalculationRequest &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, productId, quantity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductCalculationRequest(clientId: $clientId, productId: $productId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $ProductCalculationRequestCopyWith<$Res> {
  factory $ProductCalculationRequestCopyWith(ProductCalculationRequest value,
          $Res Function(ProductCalculationRequest) _then) =
      _$ProductCalculationRequestCopyWithImpl;
  @useResult
  $Res call({int clientId, int productId, int quantity});
}

/// @nodoc
class _$ProductCalculationRequestCopyWithImpl<$Res>
    implements $ProductCalculationRequestCopyWith<$Res> {
  _$ProductCalculationRequestCopyWithImpl(this._self, this._then);

  final ProductCalculationRequest _self;
  final $Res Function(ProductCalculationRequest) _then;

  /// Create a copy of ProductCalculationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_self.copyWith(
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProductCalculationRequest
    with DiagnosticableTreeMixin
    implements ProductCalculationRequest {
  const _ProductCalculationRequest(
      {required this.clientId,
      required this.productId,
      required this.quantity});
  factory _ProductCalculationRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductCalculationRequestFromJson(json);

  @override
  final int clientId;
  @override
  final int productId;
  @override
  final int quantity;

  /// Create a copy of ProductCalculationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCalculationRequestCopyWith<_ProductCalculationRequest>
      get copyWith =>
          __$ProductCalculationRequestCopyWithImpl<_ProductCalculationRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductCalculationRequestToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProductCalculationRequest'))
      ..add(DiagnosticsProperty('clientId', clientId))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCalculationRequest &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, productId, quantity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductCalculationRequest(clientId: $clientId, productId: $productId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$ProductCalculationRequestCopyWith<$Res>
    implements $ProductCalculationRequestCopyWith<$Res> {
  factory _$ProductCalculationRequestCopyWith(_ProductCalculationRequest value,
          $Res Function(_ProductCalculationRequest) _then) =
      __$ProductCalculationRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int clientId, int productId, int quantity});
}

/// @nodoc
class __$ProductCalculationRequestCopyWithImpl<$Res>
    implements _$ProductCalculationRequestCopyWith<$Res> {
  __$ProductCalculationRequestCopyWithImpl(this._self, this._then);

  final _ProductCalculationRequest _self;
  final $Res Function(_ProductCalculationRequest) _then;

  /// Create a copy of ProductCalculationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientId = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_ProductCalculationRequest(
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
