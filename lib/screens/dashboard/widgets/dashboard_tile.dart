import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
