import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemeColors {
  static Color primaryColor = Colors.deepPurple.shade400;
  static Color secondaryColor = Colors.deepPurple.shade300;
}

abstract class AppThemeTextStyles {
  static double letterSpacing = 0.4;
}

abstract class AppTheme {
  static ThemeData themeData = ThemeData(
    primaryColor: AppThemeColors.primaryColor,
    brightness: Brightness.light,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      elevation: 8.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      elevation: 5,
      behavior: SnackBarBehavior.floating,
      closeIconColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.sourceCodePro(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      bodyMedium: GoogleFonts.sourceCodePro(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      bodySmall: GoogleFonts.sourceCodePro(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      labelLarge: GoogleFonts.sourceCodePro(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      labelMedium: GoogleFonts.sourceCodePro(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      labelSmall: GoogleFonts.sourceCodePro(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppThemeColors.primaryColor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.sourceCodePro(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: AppThemeTextStyles.letterSpacing,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple.shade400,
      centerTitle: true,
      titleTextStyle: GoogleFonts.sourceCodePro(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: AppThemeTextStyles.letterSpacing,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(18.r),
        ),
      ),
    ),
  );
}
