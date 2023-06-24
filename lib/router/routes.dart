import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

abstract class AppRouteName {
  static const String home = 'home';
  static const String login = 'login';
}

abstract class AppRoutePath {
  static const String home = '/';
  static const String login = '/login';
}

abstract class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: AppRoutePath.login,
    routes: [
      GoRoute(
        name: AppRouteName.login,
        path: AppRoutePath.login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );

  static GoRouter get router => _router;
}
