import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

part 'invoice_line.freezed.dart';

part 'invoice_line.g.dart';

@freezed
abstract class InvoiceLine with _$InvoiceLine {
  const factory InvoiceLine({
    // required int id,
    required double price,
    required int quantity,
    required double discount,
    required double subtotal,
    required Product product,
  }) = _InvoiceLine;

  factory InvoiceLine.fromJson(Map<String, Object?> json) =>
      _$InvoiceLineFromJson(json);
}
