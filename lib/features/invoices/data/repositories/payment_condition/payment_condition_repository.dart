import 'package:solid_products/common/result.dart';
import 'package:solid_products/features/invoices/domain/model/payment_condition/payment_condition.dart';

abstract class PaymentConditionRepository {
  Future<Result<List<PaymentCondition>>> get();
}
