import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository.dart';
import 'package:solid_products/features/invoices/data/repositories/product/product_repository.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';
import 'package:solid_products/features/invoices/domain/model/client_group/client_group.dart';
import 'package:solid_products/features/invoices/domain/model/product/product.dart';
import 'package:solid_products/features/invoices/domain/model/product_group/product_group.dart';

class ClientRepositoryRemote implements ClientRepository {
  final ApiService _apiService;

  ClientRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Client>>> get() async {
    try {
      // final response = await _apiService.getProducts();
      // final body = response.body!;
      // return Result.ok(body.data);
      const clientGroup = ClientGroup(
        id: 1,
        code: "GRP1",
        name: "Regular",
      );
      final clients = [
        const Client(
          id: 1,
          code: "CUS-001",
          name: "Genaro Alvarez",
          clientGroup: clientGroup,
        ),
        const Client(
          id: 2,
          code: "CUS-002",
          name: "Jorge Urquiza",
          clientGroup: clientGroup,
        ),
        const Client(
          id: 3,
          code: "CUS-003",
          name: "Daniel Zeballos",
          clientGroup: ClientGroup(
            id: 2,
            code: "GRPDOC",
            name: "Doctores",
            discount: 10,
          ),
        ),
      ];
      return Result.ok(clients);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
