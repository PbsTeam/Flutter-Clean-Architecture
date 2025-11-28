import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/common/app_fonts.dart';
import 'package:getx_clean_architecture/common/colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.buttonColor.color,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: const Color(0xff614A5E),
      selectionHandleColor: const Color(0xff614A5E),
      selectionColor: const Color(0xff614A5E).withOpacity(0.25),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xff614A5E), // button text color
      ),
    ),
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: FontFamily.poppinsSemiBold,
        color: AppColors.buttonColor.color,
        fontSize: 20,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: FontFamily.poppinsSemiBold,
        color: Color(0xff0C0C0C),
        fontSize: 16,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.poppinsMedium,
        color: AppColors.buttonColor.color,
        fontSize: 24,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.buttonColor.color,
        fontFamily: FontFamily.poppinsMedium,
        fontSize: 14,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.poppinsMedium,
        color: Color(0xff484747),
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.poppinsMedium,
        color: Color(0xff484747),
        fontSize: 12,
      ),
      bodySmall: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xff484747),
          fontSize: 10,
          fontFamily: FontFamily.poppinsRegular,
          overflow: TextOverflow.ellipsis),
    ),
  );
}
