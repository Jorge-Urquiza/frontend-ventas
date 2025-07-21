// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_calculation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCalculationResponse {
// required int id,
// required double price,
  int get quantity;
  double get discount;
  double get discountPercentage;
  double get subtotal;
  Product get product;

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCalculationResponseCopyWith<ProductCalculationResponse>
      get copyWith =>
          _$ProductCalculationResponseCopyWithImpl<ProductCalculationResponse>(
              this as ProductCalculationResponse, _$identity);

  /// Serializes this ProductCalculationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductCalculationResponse &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, quantity, discount, discountPercentage, subtotal, product);

  @override
  String toString() {
    return 'ProductCalculationResponse(quantity: $quantity, discount: $discount, discountPercentage: $discountPercentage, subtotal: $subtotal, product: $product)';
  }
}

/// @nodoc
abstract mixin class $ProductCalculationResponseCopyWith<$Res> {
  factory $ProductCalculationResponseCopyWith(ProductCalculationResponse value,
          $Res Function(ProductCalculationResponse) _then) =
      _$ProductCalculationResponseCopyWithImpl;
  @useResult
  $Res call(
      {int quantity,
      double discount,
      double discountPercentage,
      double subtotal,
      Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductCalculationResponseCopyWithImpl<$Res>
    implements $ProductCalculationResponseCopyWith<$Res> {
  _$ProductCalculationResponseCopyWithImpl(this._self, this._then);

  final ProductCalculationResponse _self;
  final $Res Function(ProductCalculationResponse) _then;

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? discount = null,
    Object? discountPercentage = null,
    Object? subtotal = null,
    Object? product = null,
  }) {
    return _then(_self.copyWith(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_self.product, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ProductCalculationResponse implements ProductCalculationResponse {
  const _ProductCalculationResponse(
      {required this.quantity,
      required this.discount,
      required this.discountPercentage,
      required this.subtotal,
      required this.product});
  factory _ProductCalculationResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCalculationResponseFromJson(json);

// required int id,
// required double price,
  @override
  final int quantity;
  @override
  final double discount;
  @override
  final double discountPercentage;
  @override
  final double subtotal;
  @override
  final Product product;

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCalculationResponseCopyWith<_ProductCalculationResponse>
      get copyWith => __$ProductCalculationResponseCopyWithImpl<
          _ProductCalculationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductCalculationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCalculationResponse &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, quantity, discount, discountPercentage, subtotal, product);

  @override
  String toString() {
    return 'ProductCalculationResponse(quantity: $quantity, discount: $discount, discountPercentage: $discountPercentage, subtotal: $subtotal, product: $product)';
  }
}

/// @nodoc
abstract mixin class _$ProductCalculationResponseCopyWith<$Res>
    implements $ProductCalculationResponseCopyWith<$Res> {
  factory _$ProductCalculationResponseCopyWith(
          _ProductCalculationResponse value,
          $Res Function(_ProductCalculationResponse) _then) =
      __$ProductCalculationResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int quantity,
      double discount,
      double discountPercentage,
      double subtotal,
      Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductCalculationResponseCopyWithImpl<$Res>
    implements _$ProductCalculationResponseCopyWith<$Res> {
  __$ProductCalculationResponseCopyWithImpl(this._self, this._then);

  final _ProductCalculationResponse _self;
  final $Res Function(_ProductCalculationResponse) _then;

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = null,
    Object? discount = null,
    Object? discountPercentage = null,
    Object? subtotal = null,
    Object? product = null,
  }) {
    return _then(_ProductCalculationResponse(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductCalculationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_self.product, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

// dart format on
