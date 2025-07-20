import 'package:flutter/material.dart';
import 'package:solid_products/features/products/presentation/widgets/product_list.dart';
import 'package:solid_products/features/products/presentation/widgets/sale_create.dart';

class ProductsApp extends StatefulWidget {
  const ProductsApp({super.key});

  @override
  State<ProductsApp> createState() => _ProductsAppState();
}

class _ProductsAppState extends State<ProductsApp> {
  // final TextEditingController _skuController = TextEditingController();
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _foreignNameController = TextEditingController();
  // final TextEditingController _manufacturerSkuController =
  //     TextEditingController();
  // final TextEditingController _productGroupIdController =
  //     TextEditingController();
  // final TextEditingController _manufacturerIdController =
  //     TextEditingController();
  // final TextEditingController _supplierIdController = TextEditingController();
  // final TextEditingController _weightController = TextEditingController();
  // final TextEditingController _measurementUnitController =
  //     TextEditingController();
  // final TextEditingController _priceController = TextEditingController();
  // final TextEditingController _barCodeController = TextEditingController();
  // final TextEditingController _alternateSkuController = TextEditingController();

  void _refreshProductList() {
    // Implement the logic to refresh your product list here
    // This might involve calling an API to fetch the updated list of products
    // and then updating the state of your widget to reflect the new data
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            children: const [
              ProductList(),
              SaleCreate(),
            ],
          ),
        ),
      ),
    );
  }
}