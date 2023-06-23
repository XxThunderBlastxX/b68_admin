import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../common/failure.dart';
import '../common/logger.dart';
import '../utils/types.dart';

class DioClient {
  DioClient._();

  static final instance = DioClient._();

  /// BaseOptions for dio client
  static const baseUrl = '';
  static const connectTimeout = Duration(seconds: 30);
  static const receiveTimeout = Duration(seconds: 30);
  static const contentType = 'application/json';

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      contentType: contentType,
      responseType: ResponseType.bytes,
    ),
  );

  FEitherResponse get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final res = await _dio.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onReceiveProgress: onReceiveProgress,
      );

      if (res.statusCode == 200) {
        return Left(res.data);
      }
      throw "Something went wrong !!!";
    } catch (err) {
      l.e(err.toString());
      return Right(Failure(err: err.toString()));
    }
  }

  FEitherResponse post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final res = await _dio.post(
        path,
        data: data,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
        onSendProgress: onSendProgress,
      );

      if (res.statusCode == 200) {
        return Left(res.data);
      }
      throw "Something went wrong !!!";
    } catch (err) {
      l.e(err.toString());
      return Right(Failure(err: err.toString()));
    }
  }

  FEitherResponse put(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final res = await _dio.put(
        path,
        data: data,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );

      if (res.statusCode == 200) {
        return Left(res.data);
      }
      throw "Something went wrong !!!";
    } catch (err) {
      l.e(err.toString());
      return Right(Failure(err: err.toString()));
    }
  }

  FEitherResponse delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final res = await _dio.delete(
        path,
        data: data,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
      );

      if (res.statusCode == 200) {
        return Left(res.data);
      }
      throw "Something went wrong !!!";
    } catch (err) {
      l.e(err.toString());
      return Right(Failure(err: err.toString()));
    }
  }
}
