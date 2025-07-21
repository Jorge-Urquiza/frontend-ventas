import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/remote/converter/my_converter.dart';
import 'package:solid_products/features/invoices/data/remote/request/product_calculation_request.dart';
import 'package:solid_products/features/invoices/data/remote/response/client/client_response.dart';
import 'package:solid_products/features/invoices/data/remote/response/product/product_response.dart';
import 'package:solid_products/features/invoices/data/remote/response/product_calculation/product_calculation_response.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository_remote.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository_remote.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository_remote.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';
import 'features/products/presentation/pages/products.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) {
            final chopperClient = ChopperClient(
              baseUrl: Uri.parse("http://localhost:8080/api"),
              services: [ApiService.create()],
              converter: const MyConverter(
                {
                  ProductResponse: ProductResponse.fromJson,
                  ClientResponse: ClientResponse.fromJson,
                  Product: Product.fromJson,
                  Client: Client.fromJson,
                  ProductCalculationRequest: ProductCalculationRequest.fromJson,
                  ProductCalculationResponse: ProductCalculationResponse.fromJson,
                  InvoiceLine: InvoiceLine.fromJson
                },
              ),
            );
            return chopperClient.getService<ApiService>();
          },
        ),
        Provider(
          create: (context) => ProductRepositoryRemote(
            apiService: context.read(),
          ) as ProductRepository,
        ),
        Provider(
          create: (context) => ClientRepositoryRemote(
            apiService: context.read(),
          ) as ClientRepository,
        ),
        Provider(
          create: (context) => InvoiceRepositoryRemote(
            apiService: context.read(),
          ) as InvoiceRepository,
        ),
      ],
      child: const ProductsApp(),
    ),
  );
}
