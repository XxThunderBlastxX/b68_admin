import 'package:b68_admin/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.clear_all),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              DashboardTile(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'API Status',
                      style: AppTheme.themeData.textTheme.bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                    8.verticalSpace,
                    Icon(
                      Icons.done_all,
                      color: Colors.white,
                      size: 28.w,
                    ),
                  ],
                ),
              ),
              DashboardTile(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'API Version',
                      style: AppTheme.themeData.textTheme.bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                    8.verticalSpace,
                    Text(
                      'v1.0.0',
                      style: AppTheme.themeData.textTheme.bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final Widget child;

  const DashboardTile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (150.w),
      height: 90.h,
      padding: EdgeInsets.symmetric(vertical: 9.w, horizontal: 10.h),
      margin: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.shade200,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: child,
    );
  }
}
