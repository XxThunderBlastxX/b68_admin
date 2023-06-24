import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_data.dart';
import '../../bloc/login/login_bloc.dart';
import '../../common/common.dart';
import '../../utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  VoidCallback onSignInPressed(BuildContext context) => () {
        Log.instance.i('Signing in...');
        context.read<LoginBloc>().add(OnLoginEvent());
      };

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
          } else if (state is LoginFailure) {
            Log.instance.e(
              state.failure.err.toString(),
              statusCode: state.failure.code,
            );
            context.styledSnackbar(
              state.failure.err,
              statusCode: state.failure.code,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Welcome Bravo68Web'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onSignInPressed(context),
                    child: Text(
                      'Sign In',
                      style: AppData.themeData.textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
