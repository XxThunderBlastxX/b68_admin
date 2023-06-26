import 'package:dartz/dartz.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

import '../../model/models.dart';
import '../../utils/utils.dart';
import '../dio_client.dart';
import '../interface/login_interface.dart';

class LoginRepository implements ILogin {
  LoginRepository._();

  static final instance = LoginRepository._();

  @override
  FEither<String> authenticate({
    required String url,
    required String scheme,
  }) async {
    try {
      final result = await FlutterWebAuth.authenticate(
        url: url,
        callbackUrlScheme: scheme,
      );

      return Left(result);
    } catch (err) {
      return Right(Failure(err: err.toString()));
    }
  }

  @override
  FEither<String> authorize({required String query}) async {
    const String requestUrl = 'https://api.b68.dev/auth/signin/callback/app';

    final String code = Uri.parse(query).queryParameters['code'] ?? '';

    final String sessionState =
        Uri.parse(query).queryParameters['session_state'] ?? '';

    final Map<String, dynamic> queryParameters = {
      'code': code,
      'session_state': sessionState,
    };
    try {
      final res = await DioClient.instance.get(
        requestUrl,
        queryParameters: queryParameters,
      );

      return res.fold(
        (response) {
          String? accessToken = AuthModel.fromJson(response).data?.access_token;

          return Left(accessToken ?? '');
        },
        (failure) => Right(Failure(err: failure.err)),
      );
    } catch (err) {
      return Right(Failure(err: err.toString()));
    }
  }
}
