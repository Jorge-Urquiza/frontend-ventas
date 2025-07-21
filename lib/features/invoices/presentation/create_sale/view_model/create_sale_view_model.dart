import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:solid_products/common/command.dart';
import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/invoice/invoice_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/invoice/invoice.dart';
import 'package:solid_products/features/invoices/domain/model/invoice_line/invoice_line.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

class CreateSaleViewModel extends ChangeNotifier {
  CreateSaleViewModel({
    required ProductRepository productRepository,
    required ClientRepository clientRepository,
    required InvoiceRepository invoiceRepository,
  })  : _productRepository = productRepository,
        _clientRepository = clientRepository,
        _invoiceRepository = invoiceRepository {
    loadClients = Command0(_loadClients)..execute();
    loadProducts = Command0(_loadProducts)..execute();
    addProduct = Command1(_addProduct);
    deleteProduct = Command1(_deleteProduct);
    saveInvoice = Command1(_saveInvoice);
  }

  final ProductRepository _productRepository;
  final ClientRepository _clientRepository;
  final InvoiceRepository _invoiceRepository;

  late Command0 loadClients;
  late Command0 loadProducts;
  late Command1<void, int> addProduct;
  late Command1<void, int> deleteProduct;
  late Command1<void, InvoiceHeader> saveInvoice;

  List<Client> _clients = [];
  List<Product> _products = [];
  List<PaymentCondition> _paymentConditions = [
    PaymentCondition(id: 1, name: "Contado"),
    PaymentCondition(id: 2, name: "Crédito 30 días"),
    PaymentCondition(id: 2, name: "Crédito 60 días"),
  ];
  Client? _selectedClient;
  Product? _selectedProduct;
  PaymentCondition? _selectedPaymentCondition;
  List<InvoiceLine> _invoiceLines = [];
  InvoiceSummary _invoiceSummary = InvoiceSummary();

  UnmodifiableListView<Client> get clients => UnmodifiableListView(_clients);

  UnmodifiableListView<Product> get products => UnmodifiableListView(_products);

  UnmodifiableListView<PaymentCondition> get paymentConditions =>
      UnmodifiableListView(_paymentConditions);

  UnmodifiableListView<InvoiceLine> get invoiceLines =>
      UnmodifiableListView(_invoiceLines);

  Client? get selectedClient => _selectedClient;

  Product? get selectedProduct => _selectedProduct;

  PaymentCondition? get selectedPaymentCondition => _selectedPaymentCondition;

  InvoiceSummary get invoiceSummary => _invoiceSummary;

  set selectedClient(Client? client) {
    _selectedClient = client;
    notifyListeners();
  }

  set selectedProduct(Product? product) {
    _selectedProduct = product;
    notifyListeners();
  }

  set selectedPaymentCondition(PaymentCondition? paymentCondition) {
    _selectedPaymentCondition = paymentCondition;
    notifyListeners();
  }

  Future<Result> _loadClients() async {
    try {
      final result = await _clientRepository.get();
      switch (result) {
        case Ok<List<Client>>():
          _clients = result.value;
        case Error<List<Client>>():
          print("error ${result.error}");
      }
      return result;
    } finally {
      notifyListeners();
    }
  }

  Future<Result> _loadProducts() async {
    try {
      final result = await _productRepository.get();
      switch (result) {
        case Ok<List<Product>>():
          _products = result.value;
        case Error<List<Product>>():
          print("error ${result.error}");
      }
      return result;
    } finally {
      notifyListeners();
    }
  }

  Future<Result<InvoiceLine>> _addProduct(int quantity) async {
    try {
      if (_selectedProduct == null) {
        return Result.error(Exception("No se selecciono producto"));
      }
      if (_selectedClient == null) {
        return Result.error(Exception("No se selecciono cliente"));
      }

      final result = await _invoiceRepository.calculateInvoiceLine(
        product: _selectedProduct!,
        client: _selectedClient!,
        quantity: quantity,
      );

      switch (result) {
        case Ok<InvoiceLine>():
          _invoiceLines.add(result.value);
          _selectedProduct = null;
          _calculateTotal();
        case Error<InvoiceLine>():
          print("error ${result.error}");
      }
      return result;
    } finally {
      notifyListeners();
    }
  }

  Future<Result> _deleteProduct(int index) async {
    try {
      await Future.delayed(const Duration(milliseconds: 10));
      _invoiceLines.removeAt(index);
      _calculateTotal();
      return const Result.ok(true);
    } finally {
      notifyListeners();
    }
  }

  void _calculateTotal() {
    var discount = 0.0;
    var subtotal = 0.0;
    var total = 0.0;
    for (final invoiceLine in _invoiceLines) {
      subtotal += invoiceLine.subtotal;
      discount += invoiceLine.discount;
    }
    total = subtotal - discount;
    _invoiceSummary = _invoiceSummary.copyWith(
      subtotal: subtotal,
      discount: discount,
      total: total,
    );
  }

  Future<Result> _saveInvoice(InvoiceHeader header) async {
    try {
      final invoice = Invoice(
        nit: header.nit,
        businessName: header.businessName,
        total: invoiceSummary.total,
        client: _selectedClient,
      );
      final result = await _invoiceRepository.save(invoice);
      switch (result) {
        case Ok<Invoice>():
          _selectedProduct = null;
          _selectedClient = null;
          _invoiceLines = [];
          _calculateTotal();
        case Error<Invoice>():
          print("error ${result.error}");
      }
      return result;
    } finally {
      notifyListeners();
    }
  }
}

class InvoiceHeader {
  final String businessName;
  final String nit;

  InvoiceHeader({required this.businessName, required this.nit});
}

class InvoiceSummary {
  final double subtotal;
  final double discount;
  final double total;

  InvoiceSummary({
    this.subtotal = 0.0,
    this.discount = 0.0,
    this.total = 0.0,
  });

  InvoiceSummary copyWith({
    subtotal,
    discount,
    total,
  }) {
    return InvoiceSummary(
      subtotal: subtotal ?? this.subtotal,
      discount: discount ?? this.discount,
      total: total ?? this.total,
    );
  }
}
