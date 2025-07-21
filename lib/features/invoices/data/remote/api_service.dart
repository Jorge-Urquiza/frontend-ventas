import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:solid_products/features/invoices/data/remote/request/product_calculation_request.dart';
import 'package:solid_products/features/invoices/data/remote/response/product_calculation/product_calculation_response.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice/invoice.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/v1")
abstract class ApiService extends ChopperService {
  static ApiService create([ChopperClient? client]) => _$ApiService(client);

  @GET(path: "products")
  Future<Response<List<Product>>> getProducts();

  @GET(path: "clients")
  Future<Response<List<Client>>> getClients();

  @POST(path: "invoice")
  Future<Response<Invoice>> saveInvoice(@Body() Invoice invoice);

  @POST(path: "productCalculation")
  Future<Response<ProductCalculationResponse>> calculateInvoiceLine(
    @Body() ProductCalculationRequest body,
  );

  @GET(path: "payment-conditions")
  Future<Response<List<PaymentCondition>>> getPaymentConditions();
}
