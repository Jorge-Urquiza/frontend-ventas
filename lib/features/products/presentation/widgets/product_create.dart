import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'text_field.dart';

class ProductCreate extends StatefulWidget {
  final TextEditingController skuController;
  final TextEditingController nameController;
  final TextEditingController foreignNameController;
  final TextEditingController manufacturerSkuController;
  final TextEditingController productGroupIdController;
  final TextEditingController manufacturerIdController;
  final TextEditingController supplierIdController;
  final TextEditingController weightController;
  final TextEditingController measurementUnitController;
  final TextEditingController priceController;
  final TextEditingController barCodeController;
  final TextEditingController alternateSkuController;
  final Function() onProductCreated;

  const ProductCreate({
    super.key,
    required this.skuController,
    required this.nameController,
    required this.foreignNameController,
    required this.manufacturerSkuController,
    required this.productGroupIdController,
    required this.manufacturerIdController,
    required this.supplierIdController,
    required this.weightController,
    required this.measurementUnitController,
    required this.priceController,
    required this.barCodeController,
    required this.alternateSkuController,
    required this.onProductCreated,
  });

  @override
  _ProductCreateState createState() => _ProductCreateState();
}

class _ProductCreateState extends State<ProductCreate> {
  bool _isLoading = false;
  List<Map<String, dynamic>> _suppliers = [];
  int? _selectedSupplierId;
  List<Map<String, dynamic>> _productGroups = [];
  int? _selectedProductGroupId;
  List<Map<String, dynamic>> _manufacturers = [];
  int? _selectedManufacturerId;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _fetchSuppliers();
    _fetchProductGroups();
    _fetchManufacturers();
  }

  Future<void> _fetchSuppliers() async {
    final url = Uri.parse('http://localhost:8080/api/v1/supliers');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _suppliers = data.cast<Map<String, dynamic>>();
        });
      } else {
        print('Failed to load suppliers: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching suppliers: $e');
    }
  }

  Future<void> _fetchProductGroups() async {
    final url = Uri.parse('http://localhost:8080/api/v1/productgroups');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _productGroups = data.cast<Map<String, dynamic>>();
        });
      } else {
        print('Failed to load product groups: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching product groups: $e');
    }
  }

  Future<void> _fetchManufacturers() async {
    final url = Uri.parse('http://localhost:8080/api/v1/manufacturers');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _manufacturers = data.cast<Map<String, dynamic>>();
        });
      } else {
        print('Failed to load manufacturers: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching manufacturers: $e');
    }
  }

  Future<void> _createProduct() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final url = Uri.parse('http://localhost:8080/api/v1/products');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      "sku": widget.skuController.text,
      "name": widget.nameController.text,
      "foreignName": widget.foreignNameController.text,
      "manufacturerSku": widget.manufacturerSkuController.text,
      "productGroupId": _selectedProductGroupId,
      "manufacturerId": _selectedManufacturerId,
      "supplierId": _selectedSupplierId,
      "weight": double.parse(widget.weightController.text),
      "measurementUnit": widget.measurementUnitController.text,
      "price": double.parse(widget.priceController.text),
      "barCode": widget.barCodeController.text,
      "alternateSku": widget.alternateSkuController.text,
    });
    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Producto creado exitosamente')),
        );
        _clearForm();
        widget.onProductCreated();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Fallo al crear producto: ${response.body}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _clearForm() {
    widget.skuController.clear();
    widget.nameController.clear();
    widget.foreignNameController.clear();
    widget.manufacturerSkuController.clear();
    widget.productGroupIdController.clear();
    widget.manufacturerIdController.clear();
    widget.supplierIdController.clear();
    widget.weightController.clear();
    widget.measurementUnitController.clear();
    widget.priceController.clear();
    widget.barCodeController.clear();
    widget.alternateSkuController.clear();
    setState(() {
      _selectedSupplierId = null;
      _selectedProductGroupId = null;
      _selectedManufacturerId = null;
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
                  'Formulario de Registro de Productos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF004277),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: widget.skuController,
                        decoration: InputDecoration(
                          labelText: 'SKU',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese el SKU';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: widget.nameController,
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese el nombre';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: widget.foreignNameController,
                        decoration: InputDecoration(
                          labelText: 'Nombre Extranjero',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: widget.manufacturerSkuController,
                        decoration: InputDecoration(
                          labelText: 'SKU del Fabricante',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        decoration: InputDecoration(
                          labelText: 'Grupo de Producto',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedProductGroupId,
                        items: _productGroups.map((group) {
                          return DropdownMenuItem<int>(
                            value: group['id'],
                            child: Text(group['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedProductGroupId = value;
                            widget.productGroupIdController.text = value.toString();
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Por favor, seleccione un grupo de producto';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        decoration: InputDecoration(
                          labelText: 'Fabricante',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedManufacturerId,
                        items: _manufacturers.map((manufacturer) {
                          return DropdownMenuItem<int>(
                            value: manufacturer['id'],
                            child: Text(manufacturer['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedManufacturerId = value;
                            widget.manufacturerIdController.text = value.toString();
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Por favor, seleccione un fabricante';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        decoration: InputDecoration(
                          labelText: 'Proveedor',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedSupplierId,
                        items: _suppliers.map((supplier) {
                          return DropdownMenuItem<int>(
                            value: supplier['id'],
                            child: Text(supplier['name']),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedSupplierId = value;
                            widget.supplierIdController.text = value.toString();
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Por favor, seleccione un proveedor';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: widget.weightController,
                        decoration: InputDecoration(
                          labelText: 'Peso',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese el peso';
                          }
                          if (double.tryParse(value) == null) {
                            return 'Por favor, ingrese un número válido';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: widget.measurementUnitController,
                        decoration: InputDecoration(
                          labelText: 'Unidad de Medida',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese la unidad de medida';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: widget.priceController,
                        decoration: InputDecoration(
                          labelText: 'Precio',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese el precio';
                          }
                          if (double.tryParse(value) == null) {
                            return 'Por favor, ingrese un número válido';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: widget.barCodeController,
                        decoration: InputDecoration(
                          labelText: 'Código de Barras',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value != null && value.isNotEmpty && value.length > 100) {
                            return 'El código de barras no puede exceder 100 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: widget.alternateSkuController,
                        decoration: InputDecoration(
                          labelText: 'SKU Alternativo',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value != null && value.isNotEmpty && value.length > 50) {
                            return 'El SKU alternativo no puede exceder 50 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        elevation: 0,
                        color: const Color(0xFF004277),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledColor: const Color(0xFF004277).withOpacity(0.5),
                        height: 50,
                        onPressed: _isLoading ? null : _createProduct,
                        child: _isLoading
                            ? CircularProgressIndicator(color: Colors.white)
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}