import '../../utils/types.dart';

abstract class ILogin {
  FEither<String> authenticate({required String url, required String scheme});

  FEither<String> authorize({required String query});
}
