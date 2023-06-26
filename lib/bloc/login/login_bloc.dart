import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/repository.dart';
import '../../utils/utils.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginAuthenticateEvent>((event, emit) async {
      await onLoginEventHandler(event, emit);
    });

    on<LoginAuthorizeEvent>((event, emit) {});
  }
}

extension OnLoginEventExtension on LoginBloc {
  Future<void> onLoginEventHandler(
    LoginAuthenticateEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      final auth = await LoginRepository.instance
          .authenticate(url: event.url, scheme: event.scheme);
      await auth.fold(
        (url) async {
          emit(LoginLoading());
          await LoginRepository.instance.authorize(query: url).then((res) {
            return res.fold(
              (accessToken) async {
                return await LocalStorage.instance
                    .set('accessToken', accessToken)
                    .whenComplete(() => emit(LoginSuccess()));
              },
              (failure) {
                Log.instance.e(failure.err.toString());
                emit(LoginFailure(failure: failure));
              },
            );
          });
        },
        (failure) {
          Log.instance.e(failure.err.toString());
          emit(LoginFailure(failure: failure));
        },
      );
    } catch (err) {
      Log.instance.e(err.toString());
      emit(LoginFailure(failure: Failure(err: err.toString())));
    }
  }
}
