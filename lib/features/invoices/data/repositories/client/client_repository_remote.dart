import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/client/client_repository.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';

class ClientRepositoryRemote implements ClientRepository {
  final ApiService _apiService;

  ClientRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Client>>> get() async {
    try {
      final response = await _apiService.getClients();
      final body = response.body!;
      return Result.ok(body);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
