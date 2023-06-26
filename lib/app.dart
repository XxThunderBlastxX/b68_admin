import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_theme.dart';
import 'router/routes.dart';

class B68App extends StatelessWidget {
  const B68App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        title: 'B68 Admin',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        routerDelegate: AppRoutes.router.routerDelegate,
        routeInformationParser: AppRoutes.router.routeInformationParser,
        routeInformationProvider: AppRoutes.router.routeInformationProvider,
      ),
    );
  }
}
