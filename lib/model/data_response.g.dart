// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataResponse<TModel> _$DataResponseFromJson<TModel>(
  Map<String, dynamic> json,
  TModel Function(Object? json) fromJsonTModel,
) =>
    DataResponse<TModel>(
      json['success'] as bool?,
      json['code'] as int?,
      json['message'] as String?,
      _$nullableGenericFromJson(json['body'], fromJsonTModel),
    );

Map<String, dynamic> _$DataResponseToJson<TModel>(
  DataResponse<TModel> instance,
  Object? Function(TModel value) toJsonTModel,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('body', _$nullableGenericToJson(instance.body, toJsonTModel));
  return val;
}

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
