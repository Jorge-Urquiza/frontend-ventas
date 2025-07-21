// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiService;

  @override
  Future<Response<ProductResponse>> getProducts() {
    final Uri $url = Uri.parse('/api/products/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ProductResponse, ProductResponse>($request);
  }

  @override
  Future<Response<ClientResponse>> getClients() {
    final Uri $url = Uri.parse('/api/clients/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ClientResponse, ClientResponse>($request);
  }

  @override
  Future<Response<Invoice>> saveInvoice(Invoice invoice) {
    final Uri $url = Uri.parse('/api/invoice/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Invoice, Invoice>($request);
  }

  @override
  Future<Response<InvoiceLine>> calculateInvoiceLine(InvoiceLine invoiceLine) {
    final Uri $url = Uri.parse('/api/invoice/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<InvoiceLine, InvoiceLine>($request);
  }
}
