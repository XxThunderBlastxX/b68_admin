// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      message: json['message'] as String,
      error: json['error'] as bool,
      meta_data: json['meta_data'] as String?,
      data: json['data'] == null
          ? null
          : AuthModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'meta_data': instance.meta_data,
      'data': instance.data,
    };

_$_AuthModelData _$$_AuthModelDataFromJson(Map<String, dynamic> json) =>
    _$_AuthModelData(
      access_token: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_AuthModelDataToJson(_$_AuthModelData instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
    };
