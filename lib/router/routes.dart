import 'package:go_router/go_router.dart';

import '../screens/dashboard/dashboard.dart';
import '../screens/screens.dart';
import '../utils/utils.dart';

abstract class AppRouteName {
  static const String dashboard = 'dashboard';
  static const String login = 'login';
}

abstract class AppRoutePath {
  static const String dashboard = '/';
  static const String login = '/login';
}

abstract class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: AppRoutePath.login,
    redirect: (_, __) {
      if (!LocalStorage.instance.containsKey('accessToken')) {
        return AppRoutePath.login;
      } else {
        return AppRoutePath.dashboard;
      }
    },
    routes: [
      GoRoute(
        name: AppRouteName.login,
        path: AppRoutePath.login,
        builder: (context, state) => const LoginScreen(),
        redirect: (_, __) {
          if (!LocalStorage.instance.containsKey('accessToken')) {
            return AppRoutePath.login;
          } else {
            return AppRoutePath.dashboard;
          }
        },
      ),
      GoRoute(
        name: AppRouteName.dashboard,
        path: AppRoutePath.dashboard,
        builder: (context, state) => const DashboardScreen(),
      ),
    ],
  );

  static GoRouter get router => _router;
}
