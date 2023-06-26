import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String message,
    required bool error,
    String? meta_data,
    AuthModelData? data,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class AuthModelData with _$AuthModelData {
  const factory AuthModelData({
    String? access_token,
  }) = _AuthModelData;

  factory AuthModelData.fromJson(Map<String, dynamic> json) =>
      _$AuthModelDataFromJson(json);
}
