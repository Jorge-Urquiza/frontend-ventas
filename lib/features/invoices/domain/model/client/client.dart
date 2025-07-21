import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/client_group/client_group.dart';

part 'client.freezed.dart';

part 'client.g.dart';

@freezed
abstract class Client with _$Client {
  const factory Client({
    required int id,
    required String code,
    required String name,
    ClientGroup? clientGroup
  }) = _Client;

  factory Client.fromJson(Map<String, Object?> json) => _$ClientFromJson(json);
}

