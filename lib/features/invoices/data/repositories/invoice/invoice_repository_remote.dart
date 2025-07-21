import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/remote/request/product_calculation_request.dart';
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
      final request = ProductCalculationRequest(
        clientId: client.id,
        productId: product.id,
        quantity: quantity,
      );
      final response = await _apiService.calculateInvoiceLine(request);
      print("Response invoice: $response");
      final body = response.body!;
      final invoiceLine = InvoiceLine(
        price: body.product.price,
        quantity: body.quantity,
        discount: body.discount,
        discountPercentage: body.discountPercentage,
        subtotal: body.subtotal,
        product: body.product,
      );

      return Result.ok(invoiceLine);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<Invoice>> save(Invoice invoice) async {
    try {
      print(invoice.toJson());
      final response = await _apiService.saveInvoice(invoice);
      final body = response.body!;
      return Result.ok(body);
    } on Exception catch (e) {
      print("[InvoiceRepo] $e");
      return Result.error(e);
    }
  }
}
