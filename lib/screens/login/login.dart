import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../app_theme.dart';
import '../../bloc/login/login_bloc.dart';
import '../../common/common.dart';
import '../../router/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  VoidCallback onSignInPressed(BuildContext context) => () {
        String url = 'https://api.b68.dev/auth/signin/app';
        String scheme = 'b68-admin';

        context
            .read<LoginBloc>()
            .add(LoginAuthenticateEvent(url: url, scheme: scheme));
      };

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            context.go(AppRouteName.dashboard);
          } else if (state is LoginFailure) {
            context.styledSnackbar(
              state.failure.err,
              statusCode: state.failure.code,
            );
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: AppThemeColors.primaryColor,
                ),
              ),
            );
          } else {
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
                        style:
                            AppTheme.themeData.textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
