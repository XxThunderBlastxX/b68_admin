import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme.dart';
import 'widgets/dashboard_drawer.dart';
import 'widgets/dashboard_tile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: DashboardDrawer(context: context),
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
