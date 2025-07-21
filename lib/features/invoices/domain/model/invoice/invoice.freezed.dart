// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invoice implements DiagnosticableTreeMixin {
  String get nit;
  String get businessName;
  double get total;
  Client? get client;
  List<InvoiceLine>? get invoiceLines;
  PaymentCondition? get paymentCondition;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<Invoice> get copyWith =>
      _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Invoice'))
      ..add(DiagnosticsProperty('nit', nit))
      ..add(DiagnosticsProperty('businessName', businessName))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('client', client))
      ..add(DiagnosticsProperty('invoiceLines', invoiceLines))
      ..add(DiagnosticsProperty('paymentCondition', paymentCondition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invoice &&
            (identical(other.nit, nit) || other.nit == nit) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality()
                .equals(other.invoiceLines, invoiceLines) &&
            (identical(other.paymentCondition, paymentCondition) ||
                other.paymentCondition == paymentCondition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nit, businessName, total, client,
      const DeepCollectionEquality().hash(invoiceLines), paymentCondition);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Invoice(nit: $nit, businessName: $businessName, total: $total, client: $client, invoiceLines: $invoiceLines, paymentCondition: $paymentCondition)';
  }
}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) =
      _$InvoiceCopyWithImpl;
  @useResult
  $Res call(
      {String nit,
      String businessName,
      double total,
      Client? client,
      List<InvoiceLine>? invoiceLines,
      PaymentCondition? paymentCondition});

  $ClientCopyWith<$Res>? get client;
  $PaymentConditionCopyWith<$Res>? get paymentCondition;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nit = null,
    Object? businessName = null,
    Object? total = null,
    Object? client = freezed,
    Object? invoiceLines = freezed,
    Object? paymentCondition = freezed,
  }) {
    return _then(_self.copyWith(
      nit: null == nit
          ? _self.nit
          : nit // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      invoiceLines: freezed == invoiceLines
          ? _self.invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLine>?,
      paymentCondition: freezed == paymentCondition
          ? _self.paymentCondition
          : paymentCondition // ignore: cast_nullable_to_non_nullable
              as PaymentCondition?,
    ));
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_self.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_self.client!, (value) {
      return _then(_self.copyWith(client: value));
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentConditionCopyWith<$Res>? get paymentCondition {
    if (_self.paymentCondition == null) {
      return null;
    }

    return $PaymentConditionCopyWith<$Res>(_self.paymentCondition!, (value) {
      return _then(_self.copyWith(paymentCondition: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Invoice with DiagnosticableTreeMixin implements Invoice {
  const _Invoice(
      {required this.nit,
      required this.businessName,
      required this.total,
      this.client,
      final List<InvoiceLine>? invoiceLines,
      this.paymentCondition})
      : _invoiceLines = invoiceLines;
  factory _Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  final String nit;
  @override
  final String businessName;
  @override
  final double total;
  @override
  final Client? client;
  final List<InvoiceLine>? _invoiceLines;
  @override
  List<InvoiceLine>? get invoiceLines {
    final value = _invoiceLines;
    if (value == null) return null;
    if (_invoiceLines is EqualUnmodifiableListView) return _invoiceLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaymentCondition? paymentCondition;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InvoiceToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Invoice'))
      ..add(DiagnosticsProperty('nit', nit))
      ..add(DiagnosticsProperty('businessName', businessName))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('client', client))
      ..add(DiagnosticsProperty('invoiceLines', invoiceLines))
      ..add(DiagnosticsProperty('paymentCondition', paymentCondition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Invoice &&
            (identical(other.nit, nit) || other.nit == nit) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLines, _invoiceLines) &&
            (identical(other.paymentCondition, paymentCondition) ||
                other.paymentCondition == paymentCondition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nit, businessName, total, client,
      const DeepCollectionEquality().hash(_invoiceLines), paymentCondition);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Invoice(nit: $nit, businessName: $businessName, total: $total, client: $client, invoiceLines: $invoiceLines, paymentCondition: $paymentCondition)';
  }
}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) =
      __$InvoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String nit,
      String businessName,
      double total,
      Client? client,
      List<InvoiceLine>? invoiceLines,
      PaymentCondition? paymentCondition});

  @override
  $ClientCopyWith<$Res>? get client;
  @override
  $PaymentConditionCopyWith<$Res>? get paymentCondition;
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nit = null,
    Object? businessName = null,
    Object? total = null,
    Object? client = freezed,
    Object? invoiceLines = freezed,
    Object? paymentCondition = freezed,
  }) {
    return _then(_Invoice(
      nit: null == nit
          ? _self.nit
          : nit // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      client: freezed == client
          ? _self.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      invoiceLines: freezed == invoiceLines
          ? _self._invoiceLines
          : invoiceLines // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLine>?,
      paymentCondition: freezed == paymentCondition
          ? _self.paymentCondition
          : paymentCondition // ignore: cast_nullable_to_non_nullable
              as PaymentCondition?,
    ));
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_self.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_self.client!, (value) {
      return _then(_self.copyWith(client: value));
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentConditionCopyWith<$Res>? get paymentCondition {
    if (_self.paymentCondition == null) {
      return null;
    }

    return $PaymentConditionCopyWith<$Res>(_self.paymentCondition!, (value) {
      return _then(_self.copyWith(paymentCondition: value));
    });
  }
}

// dart format on
