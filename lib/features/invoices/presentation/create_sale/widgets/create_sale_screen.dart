import 'package:flutter/material.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';
import 'package:solid_products/features/invoices/presentation/create_sale/view_model/create_sale_view_model.dart';
import 'package:toastification/toastification.dart';

class CreateSaleScreen extends StatefulWidget {
  final CreateSaleViewModel viewModel;

  const CreateSaleScreen({super.key, required this.viewModel});

  @override
  State<CreateSaleScreen> createState() => _CreateSaleScreenState();
}

class _CreateSaleScreenState extends State<CreateSaleScreen> {
  final _formKey = GlobalKey<FormState>();
  final _productFormKey = GlobalKey<FormState>();
  final TextEditingController _nitController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  @override
  void initState() {
    widget.viewModel.saveInvoice.addListener(_saveInvoiceListener);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CreateSaleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.saveInvoice.removeListener(_saveInvoiceListener);
    widget.viewModel.saveInvoice.addListener(_saveInvoiceListener);
  }

  @override
  void dispose() {
    widget.viewModel.saveInvoice.removeListener(_saveInvoiceListener);
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Formulario de Registro de Ventas',
                    style: theme.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _nitController,
                    decoration: const InputDecoration(
                      labelText: 'NIT',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Ingrese el NIT'
                        : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _businessNameController,
                    decoration: const InputDecoration(
                      labelText: 'Razón social',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Ingrese la razón social'
                        : null,
                  ),
                  const SizedBox(height: 16),
                  _clientDropdown(),
                  const SizedBox(height: 16),
                  _paymentConditionDropdown(),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  _productForm(),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  Text(
                    'Detalle de productos',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  _invoiceLines(),
                  const SizedBox(height: 16),
                  _summary(),
                  const SizedBox(height: 16),
                  _saveButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _paymentConditionDropdown() {
    return ListenableBuilder(
      listenable: widget.viewModel,
      // listenable: widget.viewModel.paymentConditions,
      // builder: (context, child) {
      //   if (widget.viewModel.loadClients.running) {
      //     return const Center(child: CircularProgressIndicator());
      //   }
      //
      //   if (widget.viewModel.loadClients.error) {
      //     return Center(
      //       child: Text("Error: ${widget.viewModel.loadClients.error}"),
      //     );
      //   }
      //
      //   return child!;
      // },
      // child: ListenableBuilder(
      //   listenable: widget.viewModel,
      builder: (context, _) {
        return DropdownButtonFormField(
          items: widget.viewModel.paymentConditions.map((paymentCondition) {
            return DropdownMenuItem<PaymentCondition>(
              value: paymentCondition,
              child: Text(paymentCondition.name),
            );
          }).toList(),
          value: widget.viewModel.selectedPaymentCondition,
          onChanged: (value) {
            widget.viewModel.selectedPaymentCondition = value;
          },
          decoration: const InputDecoration(
            labelText: 'Condición de pago',
            border: OutlineInputBorder(),
          ),
        );
      },
      //   ),
    );
  }

  _clientDropdown() {
    return ListenableBuilder(
      listenable: widget.viewModel.loadClients,
      builder: (context, child) {
        if (widget.viewModel.loadClients.running) {
          return const Center(child: CircularProgressIndicator());
        }

        if (widget.viewModel.loadClients.error) {
          return Center(
            child: Text("Error: ${widget.viewModel.loadClients.error}"),
          );
        }

        return child!;
      },
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          return DropdownButtonFormField(
            items: widget.viewModel.clients.map((client) {
              var label = "${client.name} - ${client.clientGroup?.code}";
              if ((client.clientGroup?.discount ?? 0) > 0) {
                label +=
                    " - ${client.clientGroup!.discount?.toStringAsFixed(2)}%";
              }
              return DropdownMenuItem<Client>(
                value: client,
                child: Text(label),
              );
            }).toList(),
            value: widget.viewModel.selectedClient,
            onChanged: (value) {
              widget.viewModel.selectedClient = value;
            },
            decoration: const InputDecoration(
              labelText: 'Cliente',
              border: OutlineInputBorder(),
            ),
          );
        },
      ),
    );
  }

  _productForm() {
    return Form(
      key: _productFormKey,
      child: Column(
        children: [
          _productDropdown(),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Cantidad',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              final quantity = int.tryParse(value ?? "");
              if (quantity == null || quantity <= 0) {
                return 'Ingrese una cantidad válida';
              }
              return null;
            },
            controller: _quantityController,
          ),
          const SizedBox(height: 16),
          _addProduct(),
        ],
      ),
    );
  }

  _productDropdown() {
    return ListenableBuilder(
      listenable: widget.viewModel.loadProducts,
      builder: (context, child) {
        if (widget.viewModel.loadProducts.running) {
          return const Center(child: CircularProgressIndicator());
        }

        // if (widget.viewModel.loadProducts.error) {
        //   return Center(
        //     child: Text("Error: ${widget.viewModel.loadProducts.error}"),
        //   );
        // }

        return child!;
      },
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          return DropdownButtonFormField(
            items: widget.viewModel.products.map((product) {
              var label = "${product.name} - ${product.productGroup.code}";
              if ((product.productGroup.discount ?? 0) > 0) {
                label +=
                    " - ${product.productGroup.discount?.toStringAsFixed(2)}%";
              }

              return DropdownMenuItem<Product>(
                value: product,
                child: Text(label),
              );
            }).toList(),
            value: widget.viewModel.selectedProduct,
            onChanged: (value) {
              widget.viewModel.selectedProduct = value;
            },
            decoration: const InputDecoration(
              labelText: 'Producto',
              border: OutlineInputBorder(),
            ),
          );
        },
      ),
    );
  }

  _addProduct() {
    return ListenableBuilder(
      listenable: widget.viewModel.addProduct,
      builder: (context, child) {
        if (widget.viewModel.addProduct.running) {
          return const Center(child: CircularProgressIndicator());
        }

        return child!;
      },
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (!_productFormKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Complete los campos obligatorios'),
                        ),
                      );
                      return;
                    }

                    if (widget.viewModel.selectedClient == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Cliente no seleccionado'),
                        ),
                      );
                      return;
                    }

                    final quantity = int.parse(_quantityController.text);
                    await widget.viewModel.addProduct.execute(quantity);
                    _quantityController.clear();
                  },
                  child: Text("Agregar producto"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _invoiceLines() {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, _) {
        final theme = Theme.of(context);
        if (widget.viewModel.invoiceLines.isEmpty) {
          return Center(
            child: Text(
              "Lista vacía",
              style: theme.textTheme.titleLarge,
            ),
          );
        }

        return Container(
          width: double.infinity,
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Nro.')),
              DataColumn(label: Text('Producto')),
              DataColumn(label: Text('Grupo')),
              DataColumn(label: Text('Precio')),
              DataColumn(label: Text('Cantidad')),
              DataColumn(label: Text('Descuento')),
              DataColumn(label: Text('Subtotal')),
              DataColumn(label: Text('')),
            ],
            rows: widget.viewModel.invoiceLines.asMap().entries.map((entry) {
              final index = entry.key;
              final line = entry.value;

              final discountLine = (line.product.productGroup.discount ?? 0) > 0
                  ? " (-${line.product.productGroup.discount}%)"
                  : "";

              return DataRow(cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text(line.product.name)),
                DataCell(
                  Text(
                    "${line.product.productGroup.code}$discountLine",
                  ),
                ),
                DataCell(Text(line.price.toStringAsFixed(2))),
                DataCell(Text(line.quantity.toString())),
                DataCell(Text(line.discount.toStringAsFixed(2))),
                DataCell(Text(line.subtotal.toStringAsFixed(2))),
                DataCell(
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      widget.viewModel.deleteProduct.execute(index);
                    },
                  ),
                ),
              ]);
            }).toList(),
          ),
        );
        // return Text(viewModel.invoiceLines.join(","));
      },
    );
  }

  _summary() {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, _) {
        final theme = Theme.of(context);
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Subtotal: ${widget.viewModel.invoiceSummary.subtotal.toStringAsFixed(2)}',
                style: theme.textTheme.bodyLarge,
              ),
              Text(
                'Descuento: ${widget.viewModel.invoiceSummary.discount.toStringAsFixed(2)}',
                style: theme.textTheme.bodyLarge,
              ),
              Text(
                'Total de venta: ${widget.viewModel.invoiceSummary.total.toStringAsFixed(2)}',
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _saveButton() {
    return ListenableBuilder(
      listenable: widget.viewModel.saveInvoice,
      builder: (context, child) {
        if (widget.viewModel.saveInvoice.running) {
          return const Center(child: CircularProgressIndicator());
        }

        return child!;
      },
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: FilledButton(
          onPressed: () async {
            if (!_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Complete los campos obligatorios')),
              );
              return;
            }

            if (widget.viewModel.invoiceLines.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Agregue al menos un producto')),
              );
              return;
            }

            final invoiceHeader = InvoiceHeader(
              businessName: _businessNameController.text,
              nit: _nitController.text,
            );

            await widget.viewModel.saveInvoice.execute(invoiceHeader);

            if (widget.viewModel.invoiceLines.isEmpty) {
              _nitController.clear();
              _businessNameController.clear();
              _quantityController.clear();
            }
          },
          child: const Text('Registrar factura'),
        ),
      ),
    );
  }

  void _saveInvoiceListener() {
    if (widget.viewModel.saveInvoice.error) {
      widget.viewModel.saveInvoice.clearResult();
      toastification.show(
        type: ToastificationType.error,
        title: const Text('¡Error!'),
        description: const Text("Hubo un error al registrar la factura"),
        autoCloseDuration: const Duration(seconds: 5),
        style: ToastificationStyle.flatColored,
        alignment: Alignment.bottomCenter,
      );
    }
    if (widget.viewModel.saveInvoice.completed) {
      widget.viewModel.saveInvoice.clearResult();
      toastification.show(
        type: ToastificationType.success,
        title: const Text('¡Éxito!'),
        description: const Text("Factura registrada correctamente"),
        autoCloseDuration: const Duration(seconds: 5),
        style: ToastificationStyle.flatColored,
        alignment: Alignment.bottomCenter,
      );
    }
  }
}
