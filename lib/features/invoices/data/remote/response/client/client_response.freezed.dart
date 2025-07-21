// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientResponse implements DiagnosticableTreeMixin {
  int get code;
  String get message;
  List<Client> get data;

  /// Create a copy of ClientResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientResponseCopyWith<ClientResponse> get copyWith =>
      _$ClientResponseCopyWithImpl<ClientResponse>(
          this as ClientResponse, _$identity);

  /// Serializes this ClientResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ClientResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientResponse(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ClientResponseCopyWith<$Res> {
  factory $ClientResponseCopyWith(
          ClientResponse value, $Res Function(ClientResponse) _then) =
      _$ClientResponseCopyWithImpl;
  @useResult
  $Res call({int code, String message, List<Client> data});
}

/// @nodoc
class _$ClientResponseCopyWithImpl<$Res>
    implements $ClientResponseCopyWith<$Res> {
  _$ClientResponseCopyWithImpl(this._self, this._then);

  final ClientResponse _self;
  final $Res Function(ClientResponse) _then;

  /// Create a copy of ClientResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Client>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ClientResponse with DiagnosticableTreeMixin implements ClientResponse {
  const _ClientResponse(
      {required this.code,
      required this.message,
      required final List<Client> data})
      : _data = data;
  factory _ClientResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  final List<Client> _data;
  @override
  List<Client> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of ClientResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientResponseCopyWith<_ClientResponse> get copyWith =>
      __$ClientResponseCopyWithImpl<_ClientResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClientResponseToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ClientResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientResponse(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ClientResponseCopyWith<$Res>
    implements $ClientResponseCopyWith<$Res> {
  factory _$ClientResponseCopyWith(
          _ClientResponse value, $Res Function(_ClientResponse) _then) =
      __$ClientResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String message, List<Client> data});
}

/// @nodoc
class __$ClientResponseCopyWithImpl<$Res>
    implements _$ClientResponseCopyWith<$Res> {
  __$ClientResponseCopyWithImpl(this._self, this._then);

  final _ClientResponse _self;
  final $Res Function(_ClientResponse) _then;

  /// Create a copy of ClientResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_ClientResponse(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Client>,
    ));
  }
}

// dart format on
