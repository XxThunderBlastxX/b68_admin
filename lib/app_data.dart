import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppDataColors {
  static Color primaryColor = Colors.deepPurple.shade400;
  static Color secondaryColor = Colors.deepPurple.shade300;
}

abstract class AppDataTextStyles {
  static double letterSpacing = 0.4;
}

abstract class AppData {
  static ThemeData themeData = ThemeData(
    primaryColor: AppDataColors.primaryColor,
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.sourceCodePro(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      bodyMedium: GoogleFonts.sourceCodePro(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      bodySmall: GoogleFonts.sourceCodePro(
        fontSize: 18.sp,
        fontWeight: FontWeight.w200,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      labelLarge: GoogleFonts.sourceCodePro(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      labelMedium: GoogleFonts.sourceCodePro(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      labelSmall: GoogleFonts.sourceCodePro(
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
        color: Colors.black,
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppDataColors.primaryColor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.sourceCodePro(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            letterSpacing: AppDataTextStyles.letterSpacing,
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
        letterSpacing: AppDataTextStyles.letterSpacing,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(18.r),
        ),
      ),
    ),
  );
}
