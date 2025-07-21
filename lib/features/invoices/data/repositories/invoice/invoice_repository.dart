import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice/invoice.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

abstract class InvoiceRepository {
  Future<Result<InvoiceLine>> calculateInvoiceLine({
    required Product product,
    required Client client,
    required int quantity,
  });

  Future<Result<Invoice>> save(Invoice invoice);
}
