import 'package:dartz/dartz.dart';

import '../common/failure.dart';

typedef FEither<T> = Future<Either<T, Failure>>;

typedef FEitherVoid = FEither<void>;

typedef FEitherResponse = FEither<Map<String, dynamic>>;
