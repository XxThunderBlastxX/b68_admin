import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_data.dart';
import 'screens/login/login.dart';

class B68App extends StatelessWidget {
  const B68App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'B68 Admin',
        debugShowCheckedModeBanner: false,
        theme: AppData.themeData,
        home: const LoginScreen(),
      ),
    );
  }
}
