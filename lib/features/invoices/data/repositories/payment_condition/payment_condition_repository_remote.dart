import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/data/remote/api_service.dart';
import 'package:solid_products/features/invoices/data/repositories/payment_condition/payment_condition_repository.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';

class PaymentConditionRepositoryRemote implements PaymentConditionRepository {
  final ApiService _apiService;

  PaymentConditionRepositoryRemote({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<PaymentCondition>>> get() async {
    try {
      final response = await _apiService.getPaymentConditions();
      final body = response.body!;
      return Result.ok(body);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
