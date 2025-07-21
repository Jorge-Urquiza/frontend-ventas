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
  Future<Response<List<Product>>> getProducts() {
    final Uri $url = Uri.parse('/v1/products');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<Client>>> getClients() {
    final Uri $url = Uri.parse('/v1/clients');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Client>, Client>($request);
  }

  @override
  Future<Response<Invoice>> saveInvoice(Invoice invoice) {
    final Uri $url = Uri.parse('/v1/invoice');
    final $body = invoice;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Invoice, Invoice>($request);
  }

  @override
  Future<Response<ProductCalculationResponse>> calculateInvoiceLine(
      ProductCalculationRequest body) {
    final Uri $url = Uri.parse('/v1/productCalculation');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ProductCalculationResponse, ProductCalculationResponse>($request);
  }

  @override
  Future<Response<List<PaymentCondition>>> getPaymentConditions() {
    final Uri $url = Uri.parse('/v1/payment-conditions');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PaymentCondition>, PaymentCondition>($request);
  }
}
