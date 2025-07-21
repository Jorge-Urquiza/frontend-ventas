import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:solid_products/features/invoices/data/remote/response/client/client_response.dart';
import 'package:solid_products/features/invoices/data/remote/response/product/product_response.dart';
import 'package:solid_products/features/invoices/domain/model/invoice/invoice.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class ApiService extends ChopperService {
  static ApiService create([ChopperClient? client]) => _$ApiService(client);

  @GET(path: "products/")
  Future<Response<ProductResponse>> getProducts();

  @GET(path: "clients/")
  Future<Response<ClientResponse>> getClients();

  @GET(path: "invoice/")
  Future<Response<Invoice>> saveInvoice(Invoice invoice);

  @GET(path: "invoice/")
  Future<Response<InvoiceLine>> calculateInvoiceLine(InvoiceLine invoiceLine);
}
