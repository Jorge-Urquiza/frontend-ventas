import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';

abstract class ProductRepository {
  Future<Result<List<Product>>> get();
}
