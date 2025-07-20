import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/product.entity.dart';

class CustomProduct extends StatelessWidget {
  final ProductEntity product;
  const CustomProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF3C749C),
              ),
            ),
            const SizedBox(height: 8),
            _buildInfoRow('SKU', product.sku),
            _buildInfoRow('Nombre Extranjero', product.foreignName),
            _buildInfoRow('SKU del Fabricante', product.manufacturerSku),
            _buildInfoRow('Grupo de Producto', product.productGroupName),
            _buildInfoRow('Fabricante', product.manufacturerName),
            _buildInfoRow('Proveedor', product.supplierName),
            _buildInfoRow('Peso', '${product.weight} ${product.measurementUnit}'),
            _buildInfoRow('Precio', '${product.price} Bs'),
            _buildInfoRow('Código de Barras', product.barCode),
            _buildInfoRow('SKU Alternativo', product.alternateSku),
            _buildInfoRow('Creado el', _formatDate(product.createdAt)),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color(0xFF3C749C),
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF3C749C),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy HH:mm:ss').format(date);
  }
}