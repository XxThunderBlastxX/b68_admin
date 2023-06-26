part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginAuthenticateEvent extends LoginEvent {
  final String url;
  final String scheme;

  const LoginAuthenticateEvent({required this.url, required this.scheme});

  @override
  List<Object?> get props => [url, scheme];
}

class LoginAuthorizeEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
