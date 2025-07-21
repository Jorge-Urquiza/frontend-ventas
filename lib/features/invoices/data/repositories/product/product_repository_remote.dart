import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

class ProductRepositoryRemote implements ProductRepository {
  final ApiService _apiService;

  ProductRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Product>>> get() async {
    try {
      final response = await _apiService.getProducts();
      final body = response.body!;
      return Result.ok(body);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
