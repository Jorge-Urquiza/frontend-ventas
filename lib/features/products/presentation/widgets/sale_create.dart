import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SaleCreate extends StatefulWidget {
  const SaleCreate({super.key});

  @override
  State<SaleCreate> createState() => _SaleCreateState();
}

class _SaleCreateState extends State<SaleCreate> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nitController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  int? _selectedClientId;
  int? _selectedProductId;

  final List<Map<String, dynamic>> _clients = [
    {'id': 1, 'name': 'Jorge'},
    {'id': 2, 'name': 'Genaro '},
    {'id': 3, 'name': 'Daniel'},
  ];

  final List<Map<String, dynamic>> _products = [
    {'id': 1, 'name': 'Paceña', 'price': 10.0},
    {'id': 2, 'name': 'Corona', 'price': 15.0},
    {'id': 3, 'name': 'Huari', 'price': 12.0}
  ];

  final List<Map<String, dynamic>> _saleDetails = [];

  bool _isLoading = false;

  void _addProductToTable() {
    if (_selectedProductId == null ||
        _quantityController.text.isEmpty ||
        int.tryParse(_quantityController.text) == null) return;

    final product = _products.firstWhere((p) => p['id'] == _selectedProductId);
    final quantity = int.parse(_quantityController.text);
    final price = product['price'] as double;
    final amount = price * quantity;

    setState(() {
      _saleDetails.add({
        'productId': product['id'],
        'productName': product['name'],
        'price': price,
        'quantity': quantity,
        'amount': amount,
      });
      _quantityController.clear();
      _selectedProductId = null;
    });
  }

  double _calculateTotal() {
    return _saleDetails.fold(
        0.0, (sum, item) => sum + (item['amount'] as double));
  }

  Future<void> _createSale() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Complete los campos obligatorios')),
      );
      return;
    }

    if (_saleDetails.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Agregue al menos un producto')),
      );
      return;
    }

    final sale = {
      'nit': _nitController.text,
      'businessName': _businessNameController.text,
      'clientId': _selectedClientId,
      'details': _saleDetails,
    };

    setState(() => _isLoading = true);

    try {
      final response = await http.post(
        Uri.parse('http://localhost:8080/api/v1/sales'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(sale),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Venta registrada exitosamente')),
        );
        _clearForm();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al registrar: ${response.body}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error de red: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _clearForm() {
    _nitController.clear();
    _businessNameController.clear();
    _quantityController.clear();
    setState(() {
      _selectedClientId = null;
      _selectedProductId = null;
      _saleDetails.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Formulario de Registro de Ventas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF004277),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _nitController,
                  decoration: const InputDecoration(
                    labelText: 'NIT',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Ingrese el NIT' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _businessNameController,
                  decoration: const InputDecoration(
                    labelText: 'Razón Social',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value == null || value.isEmpty
                      ? 'Ingrese la razón social'
                      : null,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<int>(
                  decoration: const InputDecoration(
                    labelText: 'Cliente',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedClientId,
                  items: _clients.map((client) {
                    return DropdownMenuItem<int>(
                      value: client['id'],
                      child: Text(client['name']),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedClientId = value;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Seleccione un cliente' : null,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<int>(
                  decoration: const InputDecoration(
                    labelText: 'Producto',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedProductId,
                  items: _products.map((product) {
                    return DropdownMenuItem<int>(
                      value: product['id'],
                      child: Text(product['name']),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedProductId = value;
                    });
                  },
                  validator: (value) {
                    if (_saleDetails.isEmpty && value == null) {
                      return 'Seleccione un producto';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    labelText: 'Cantidad',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (_saleDetails.isEmpty) {
                      final quantity = int.tryParse(value ?? '');
                      if (quantity == null || quantity <= 0) {
                        return 'Ingrese una cantidad válida';
                      }
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: _addProductToTable,
                    child: const Text('Agregar'),
                  ),
                ),
                const SizedBox(height: 24),
                if (_saleDetails.isNotEmpty)
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Detalle de productos:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Expanded(
                          child: SingleChildScrollView(
                            child: DataTable(
                              columns: const [
                                DataColumn(label: Text('Nro.')),
                                DataColumn(label: Text('Producto')),
                                DataColumn(label: Text('Precio')),
                                DataColumn(label: Text('Cantidad')),
                                DataColumn(label: Text('Monto')),
                                DataColumn(label: Text('')),
                              ],
                              rows: _saleDetails.asMap().entries.map((entry) {
                                final index = entry.key;
                                final item = entry.value;
                                return DataRow(cells: [
                                  DataCell(Text('${index + 1}')),
                                  DataCell(
                                      Text(item['productName'].toString())),
                                  DataCell(
                                      Text(item['price'].toStringAsFixed(2))),
                                  DataCell(Text(item['quantity'].toString())),
                                  DataCell(
                                      Text(item['amount'].toStringAsFixed(2))),
                                  DataCell(
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () {
                                        setState(() {
                                          _saleDetails.removeAt(index);
                                        });
                                      },
                                    ),
                                  ),
                                ]);
                              }).toList(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Total de venta: ${_calculateTotal().toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed:
                        _isLoading || _saleDetails.isEmpty ? null : _createSale,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF004277),
                    ),
                    child: _isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            'Registrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
