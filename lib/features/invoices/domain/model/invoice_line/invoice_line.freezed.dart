// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceLine {
// required int id,
  double get price;
  int get quantity;
  double get discount;
  double get subtotal;
  Product get product;

  /// Create a copy of InvoiceLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvoiceLineCopyWith<InvoiceLine> get copyWith =>
      _$InvoiceLineCopyWithImpl<InvoiceLine>(this as InvoiceLine, _$identity);

  /// Serializes this InvoiceLine to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvoiceLine &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, quantity, discount, subtotal, product);

  @override
  String toString() {
    return 'InvoiceLine(price: $price, quantity: $quantity, discount: $discount, subtotal: $subtotal, product: $product)';
  }
}

/// @nodoc
abstract mixin class $InvoiceLineCopyWith<$Res> {
  factory $InvoiceLineCopyWith(
          InvoiceLine value, $Res Function(InvoiceLine) _then) =
      _$InvoiceLineCopyWithImpl;
  @useResult
  $Res call(
      {double price,
      int quantity,
      double discount,
      double subtotal,
      Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$InvoiceLineCopyWithImpl<$Res> implements $InvoiceLineCopyWith<$Res> {
  _$InvoiceLineCopyWithImpl(this._self, this._then);

  final InvoiceLine _self;
  final $Res Function(InvoiceLine) _then;

  /// Create a copy of InvoiceLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? quantity = null,
    Object? discount = null,
    Object? subtotal = null,
    Object? product = null,
  }) {
    return _then(_self.copyWith(
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InvoiceLine
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
class _InvoiceLine implements InvoiceLine {
  const _InvoiceLine(
      {required this.price,
      required this.quantity,
      required this.discount,
      required this.subtotal,
      required this.product});
  factory _InvoiceLine.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineFromJson(json);

// required int id,
  @override
  final double price;
  @override
  final int quantity;
  @override
  final double discount;
  @override
  final double subtotal;
  @override
  final Product product;

  /// Create a copy of InvoiceLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvoiceLineCopyWith<_InvoiceLine> get copyWith =>
      __$InvoiceLineCopyWithImpl<_InvoiceLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InvoiceLineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvoiceLine &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, quantity, discount, subtotal, product);

  @override
  String toString() {
    return 'InvoiceLine(price: $price, quantity: $quantity, discount: $discount, subtotal: $subtotal, product: $product)';
  }
}

/// @nodoc
abstract mixin class _$InvoiceLineCopyWith<$Res>
    implements $InvoiceLineCopyWith<$Res> {
  factory _$InvoiceLineCopyWith(
          _InvoiceLine value, $Res Function(_InvoiceLine) _then) =
      __$InvoiceLineCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double price,
      int quantity,
      double discount,
      double subtotal,
      Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$InvoiceLineCopyWithImpl<$Res> implements _$InvoiceLineCopyWith<$Res> {
  __$InvoiceLineCopyWithImpl(this._self, this._then);

  final _InvoiceLine _self;
  final $Res Function(_InvoiceLine) _then;

  /// Create a copy of InvoiceLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? price = null,
    Object? quantity = null,
    Object? discount = null,
    Object? subtotal = null,
    Object? product = null,
  }) {
    return _then(_InvoiceLine(
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InvoiceLine
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
