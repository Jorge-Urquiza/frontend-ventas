import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice/invoice.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

class InvoiceRepositoryRemote implements InvoiceRepository {
  final ApiService _apiService;

  InvoiceRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<InvoiceLine>> calculateInvoiceLine({
    required Product product,
    required Client client,
    required int quantity,
  }) async {
    try {
      // final response = await _apiService.saveInvoice(invoice);
      // final body = response.body!;
      // return Result.ok(body);
      final baseTotal = product.price * quantity;
      final discount = product.productGroup.discount != null &&
              product.productGroup.discount! >= 0.0
          ? baseTotal * (product.productGroup.discount! / 100.0)
          : 0.0;
      final body = await Future.value(
        InvoiceLine(
          price: product.price,
          quantity: quantity,
          discount: discount,
          subtotal: product.price * quantity - discount,
          product: product,
        ),
      );
      return Result.ok(body);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Invoice>> save(Invoice invoice) async {
    try {
      final response = await _apiService.saveInvoice(invoice);
      final body = response.body!;
      return Result.ok(body);
    } on Exception catch (e) {
      print("[InvoiceRepo] $e");
      return Result.error(e);
    }
  }
}
