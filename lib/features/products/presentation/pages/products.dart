import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_products/features/invoices/presentation/create_sale/view_model/create_sale_view_model.dart';
import 'package:solid_products/features/invoices/presentation/create_sale/widgets/create_sale_screen.dart';
import 'package:solid_products/features/products/presentation/widgets/product_list.dart';
import 'package:solid_products/features/products/presentation/widgets/sale_create.dart';
import 'package:toastification/toastification.dart';

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
    const color = Color.fromRGBO(0, 66, 119, 1.0);
    const highlight = Color.fromRGBO(48, 63, 159, 1);
    var seed = ColorScheme.fromSeed(seedColor: color, secondary: highlight);
    return ToastificationWrapper(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
          colorSchemeSeed: color,
          listTileTheme: ListTileThemeData(
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: 'GT-Walsheim',
              color: seed.onPrimaryContainer,
            ),
            subtitleTextStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              fontFamily: 'GT-Walsheim',
              color: seed.onSecondaryContainer,
            ),
          ),
        ),
        home: Scaffold(
          body: Center(
            child: Row(
              spacing: 16.0,
              children: [
                const Flexible(
                  flex: 0,
                  fit: FlexFit.tight,
                  child: ProductList(),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: CreateSaleScreen(
                    viewModel: CreateSaleViewModel(
                      productRepository: context.read(),
                      clientRepository: context.read(),
                      invoiceRepository: context.read(),
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
