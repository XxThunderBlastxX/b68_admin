import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? err;
  final String? code;

  const Failure({this.code, this.err});

  @override
  List<Object?> get props => [err, code];
}
