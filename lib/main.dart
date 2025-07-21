import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/remote/converter/my_converter.dart';
import 'package:solid_products/features/invoices/data/remote/response/client/client_response.dart';
import 'package:solid_products/features/invoices/data/remote/response/product/product_response.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository_remote.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository_remote.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository_remote.dart';
import 'features/products/presentation/pages/products.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) {
            final chopperClient = ChopperClient(
              baseUrl: Uri.parse("http://localhost:3000"),
              services: [ApiService.create()],
              converter: const MyConverter(
                {
                  ProductResponse: ProductResponse.fromJson,
                  ClientResponse: ClientResponse.fromJson,
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
