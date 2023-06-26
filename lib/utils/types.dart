import 'package:dartz/dartz.dart';

import 'failure.dart';

typedef FEither<T> = Future<Either<T, Failure>>;

typedef FFailure = Future<Failure?>;

typedef FEitherResponse = FEither<Map<String, dynamic>>;

typedef FVoid = Future<void>;
