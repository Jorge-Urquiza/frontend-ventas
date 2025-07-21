import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';

abstract class ClientRepository {
  Future<Result<List<Client>>> get();
}
