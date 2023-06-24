import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String err;
  final int? code;

  const Failure({
    required this.err,
    this.code,
  });

  @override
  List<Object?> get props => [err, code];
}
