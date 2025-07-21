import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_products/features/invoices/domain/model/client/client.dart';

part 'client_response.freezed.dart';

part 'client_response.g.dart';

@freezed
abstract class ClientResponse with _$ClientResponse {
  const factory ClientResponse({
    required int code,
    required String message,
    required List<Client> data,
  }) = _ClientResponse;

  factory ClientResponse.fromJson(Map<String, Object?> json) =>
      _$ClientResponseFromJson(json);
}
