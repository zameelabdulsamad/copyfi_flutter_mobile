import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/resources/colors.res.dart';

class LightTheme {
  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20.0.sp,
        fontWeight: FontWeight.bold,
        color: ColorsRes.appBarTitleColorLight,
      ),
      backgroundColor: ColorsRes.backgroundColorLight,
      actionsIconTheme: const IconThemeData(
        color: ColorsRes.primaryColorLight,
      ),
      iconTheme: const IconThemeData(color: ColorsRes.iconColorLight),
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorsRes.backgroundColorLight,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    ),

    colorScheme: ColorScheme.fromSwatch(
      accentColor: ColorsRes.accentColorLight,
    ),
    primaryColor: ColorsRes.primaryColorLight,
    scaffoldBackgroundColor: ColorsRes.backgroundColorLight,
    primaryIconTheme: const IconThemeData(color: ColorsRes.iconColorLight),
    iconTheme: const IconThemeData(color: ColorsRes.iconColorLight),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorsRes.primaryColorLight,
      refreshBackgroundColor: ColorsRes.backgroundProgressIndicatorColorLight,
    ),

    textTheme: TextTheme(
      labelMedium: TextStyle(
        color: ColorsRes.textFieldTextColorLight,
        fontSize: 13.0.sp,
      ),
      titleMedium: TextStyle(
        color: ColorsRes.mediumTextColorLight,
        fontSize: 28.0.sp,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: ColorsRes.smallTextColorLight,
        fontSize: 13.0.sp,
      ),

      bodyLarge: TextStyle(
        color: ColorsRes.mediumTextColorLight,
        fontSize: 22.0.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: ColorsRes.mediumTextColorLight,
        fontSize: 18.0.sp,
      ),
      bodySmall: TextStyle(
        color: ColorsRes.mediumTextColorLight,
        fontSize: 18.0.sp,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: 19.sp,
        color: ColorsRes.mediumTextColorLight,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: 16.sp,
        color: ColorsRes.mediumTextColorLight,
        decoration: TextDecoration.lineThrough,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorsRes.primaryColorLight,
    ),


    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorsRes.primaryColorLight,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: ColorsRes.primaryColorLight,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        vertical: 15.0.h,
        horizontal: 20.0.w,
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: ColorsRes.textFieldBorderColorLight),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: ColorsRes.textFieldBorderColorLight)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: ColorsRes.textFieldBorderColorLight)
      ),
      hintStyle: const TextStyle(
        color: ColorsRes.textFieldHintColorLight,
      ),
      filled: true,
      prefixIconColor: ColorsRes.textFieldHintColorLight,
      fillColor: ColorsRes.textFieldBackgroundColorLight,

    ),

    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorsRes.cursorColorLight),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsRes.bottomNavBackgroundColorLight,
    ),
  );
}
