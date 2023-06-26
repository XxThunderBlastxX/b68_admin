// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  String get message => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String? get meta_data => throw _privateConstructorUsedError;
  AuthModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call(
      {String message, bool error, String? meta_data, AuthModelData? data});

  $AuthModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? meta_data = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      meta_data: freezed == meta_data
          ? _value.meta_data
          : meta_data // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AuthModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$$_AuthModelCopyWith(
          _$_AuthModel value, $Res Function(_$_AuthModel) then) =
      __$$_AuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message, bool error, String? meta_data, AuthModelData? data});

  @override
  $AuthModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AuthModelCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$_AuthModel>
    implements _$$_AuthModelCopyWith<$Res> {
  __$$_AuthModelCopyWithImpl(
      _$_AuthModel _value, $Res Function(_$_AuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
    Object? meta_data = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AuthModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      meta_data: freezed == meta_data
          ? _value.meta_data
          : meta_data // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel implements _AuthModel {
  const _$_AuthModel(
      {required this.message, required this.error, this.meta_data, this.data});

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelFromJson(json);

  @override
  final String message;
  @override
  final bool error;
  @override
  final String? meta_data;
  @override
  final AuthModelData? data;

  @override
  String toString() {
    return 'AuthModel(message: $message, error: $error, meta_data: $meta_data, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.meta_data, meta_data) ||
                other.meta_data == meta_data) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, error, meta_data, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      __$$_AuthModelCopyWithImpl<_$_AuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      {required final String message,
      required final bool error,
      final String? meta_data,
      final AuthModelData? data}) = _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  String get message;
  @override
  bool get error;
  @override
  String? get meta_data;
  @override
  AuthModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthModelData _$AuthModelDataFromJson(Map<String, dynamic> json) {
  return _AuthModelData.fromJson(json);
}

/// @nodoc
mixin _$AuthModelData {
  String? get access_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelDataCopyWith<AuthModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelDataCopyWith<$Res> {
  factory $AuthModelDataCopyWith(
          AuthModelData value, $Res Function(AuthModelData) then) =
      _$AuthModelDataCopyWithImpl<$Res, AuthModelData>;
  @useResult
  $Res call({String? access_token});
}

/// @nodoc
class _$AuthModelDataCopyWithImpl<$Res, $Val extends AuthModelData>
    implements $AuthModelDataCopyWith<$Res> {
  _$AuthModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthModelDataCopyWith<$Res>
    implements $AuthModelDataCopyWith<$Res> {
  factory _$$_AuthModelDataCopyWith(
          _$_AuthModelData value, $Res Function(_$_AuthModelData) then) =
      __$$_AuthModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? access_token});
}

/// @nodoc
class __$$_AuthModelDataCopyWithImpl<$Res>
    extends _$AuthModelDataCopyWithImpl<$Res, _$_AuthModelData>
    implements _$$_AuthModelDataCopyWith<$Res> {
  __$$_AuthModelDataCopyWithImpl(
      _$_AuthModelData _value, $Res Function(_$_AuthModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = freezed,
  }) {
    return _then(_$_AuthModelData(
      access_token: freezed == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModelData implements _AuthModelData {
  const _$_AuthModelData({this.access_token});

  factory _$_AuthModelData.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelDataFromJson(json);

  @override
  final String? access_token;

  @override
  String toString() {
    return 'AuthModelData(access_token: $access_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModelData &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelDataCopyWith<_$_AuthModelData> get copyWith =>
      __$$_AuthModelDataCopyWithImpl<_$_AuthModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelDataToJson(
      this,
    );
  }
}

abstract class _AuthModelData implements AuthModelData {
  const factory _AuthModelData({final String? access_token}) = _$_AuthModelData;

  factory _AuthModelData.fromJson(Map<String, dynamic> json) =
      _$_AuthModelData.fromJson;

  @override
  String? get access_token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelDataCopyWith<_$_AuthModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
