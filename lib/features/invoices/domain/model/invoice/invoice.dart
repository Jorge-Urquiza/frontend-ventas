import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';

part 'invoice.freezed.dart';

part 'invoice.g.dart';

@freezed
abstract class Invoice with _$Invoice {
  const factory Invoice({
    required String nit,
    required String businessName,
    required double total,
    Client? client,
    List<InvoiceLine>? invoiceLines,
    PaymentCondition? paymentCondition,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, Object?> json) =>
      _$InvoiceFromJson(json);
}
