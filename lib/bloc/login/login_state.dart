part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginInitial {}

class LoginFailure extends LoginInitial {
  final Failure failure;

  LoginFailure(this.failure);

  @override
  List<Object> get props => [failure];
}
