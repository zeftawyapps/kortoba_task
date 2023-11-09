import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 import 'colors.dart';

class Themes {
   static    ThemeData lightTheme = ThemeData(
     bottomNavigationBarTheme:
      BottomNavigationBarThemeData(
        unselectedIconTheme: IconThemeData(
          color: LightColors.textColor,
          size: 15.sp,

        ),
        selectedLabelStyle: TextStyle(
          color: LightColors.textColor2,
          fontSize: 50.sp,
          fontFamily: 'tajawal',
        ),
        unselectedLabelStyle: TextStyle(
          color: LightColors.textColor,
          fontSize: 15.sp,
          fontFamily: 'tajawal',
        ),
        selectedIconTheme: IconThemeData(
          color: LightColors.textColor2,
          size: 15.sp,
        ),
      )
       ,
     primaryColorLight: LightColors.primaryColors,
     floatingActionButtonTheme: FloatingActionButtonThemeData(
       backgroundColor: LightColors.textColor2,),
      brightness: Brightness.light,
      backgroundColor: LightColors.backgroundColor,
      primaryColor: LightColors.primaryColors,
      appBarTheme:   AppBarTheme(
        backgroundColor: LightColors.appBar ,
        titleTextStyle: TextStyle(
          color: LightColors.appBarText,
          fontSize: 50.sp,
          fontFamily: 'tajawal',
        ),
        iconTheme: IconThemeData(
          size: 25,
          color: Color(0xfff7eeee),
        ),
      ),
      drawerTheme:   DrawerThemeData(
        backgroundColor: LightColors.drawer,

      ),
      textTheme:   TextTheme(
        button: TextStyle(
          color: Colors.white,
          fontSize: 10.sp,
          fontFamily: 'tajawal',
        ),
        subtitle1: TextStyle(
          color: LightColors.h3TextFont,
          fontSize: 5.sp,
          fontFamily: 'tajawal',
        ),
        bodyText1: TextStyle(
          color: LightColors  . h1TextFont,
          fontSize: 10.sp,
          fontFamily: 'tajawal',
        ),

        bodyText2: TextStyle(
          color:LightColors  . h2TextFont,
          fontSize: 10.sp,
          fontFamily: 'tajawal',
        ),
      ),

      iconTheme: IconThemeData(
        color: LightColors.iconColor,
        size: 5.sp,
      ),
      inputDecorationTheme:
      InputDecorationTheme(

          hintStyle: TextStyle(
              fontSize: 5.sp,
              color:  LightColors.hintColor,
            fontFamily: 'tajawal',
          ) ,
              labelStyle: TextStyle(
          color: LightColors.hintTextFont,
          fontSize: 10.sp,
                fontFamily: 'tajawal',
        ),
        filled: true,
        fillColor: LightColors.textFields,
        focusColor: LightColors.textFieldsFoucs,
focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: LightColors.inputTextBorder,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(0.sp),
         ),
         enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: LightColors.inputTextBorder,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(0.sp),
         )
      )


         );
 static    ThemeData darkTheme =
  ThemeData(
      brightness: Brightness.light,
      primaryColorDark: DarkColors.primaryColors,
      backgroundColor: DarkColors.backgroundColor,
        primaryColor: DarkColors.primaryColors,
      appBarTheme:   AppBarTheme(
        backgroundColor: DarkColors.background1,
        titleTextStyle: TextStyle(
          color: DarkColors.appBarText,
          fontSize: 24.sp,
        ),
        iconTheme: IconThemeData(
          color: Color(0xfff7eeee),
        ),
      ),
      drawerTheme:   DrawerThemeData(
        backgroundColor: DarkColors.drawer,
      ),
      textTheme:   TextTheme(
        button: TextStyle(
          color: Colors.white,
          fontSize: 20.0.sp,
          fontFamily: 'tajawal',
        ),
        subtitle1: TextStyle(
          color: DarkColors.textFieldColor,
          fontSize: 24.sp,
          fontFamily: 'tajawal',
        ),
        bodyText1: TextStyle(
          color: DarkColors.textColor,
          fontSize: 25.sp,
          fontFamily: 'tajawal',
        ),
        bodyText2: TextStyle(
          color: Colors.white ,
          fontSize: 24.sp,
          fontFamily: 'tajawal',
        ),
      ),
      iconTheme: IconThemeData(
        color: DarkColors.iconColor,
        size: 35.sp,

      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: DarkColors.hintColor,
          fontSize: 15.sp,
          fontFamily: 'tajawal',
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DarkColors.dividerColor, width: 5),
        ),
      ));



}