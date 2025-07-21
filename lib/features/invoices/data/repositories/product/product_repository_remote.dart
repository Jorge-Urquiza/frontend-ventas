import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';
import 'package:solid_products/features/invoices/domain/model/product_group/product_group.dart';

class ProductRepositoryRemote implements ProductRepository {
  final ApiService _apiService;

  ProductRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Product>>> get() async {
    try {
      // final response = await _apiService.getProducts();
      // final body = response.body!;
      // return Result.ok(body.data);

      final products = [
        const Product(
          name: "Producto A",
          code: "PRD001",
          price: 120,
          productGroup: ProductGroup(
            code: "GRP001",
            name: "Medicamentos",
            id: 1,
          ),
          id: 1,
        ),
        const Product(
          id: 2,
          name: "Producto B",
          code: "PRD002",
          price: 120,
          productGroup: ProductGroup(
            code: "GRP002",
            name: "COMIDA",
            discount: 7,
            id: 1,
          ),
        ),
      ];
      return Result.ok(products);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
