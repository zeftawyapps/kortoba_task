import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'backgrunds.dart';
import 'colors.dart';
import 'fons.dart';

class DashboardDecorations {
  static BoxDecoration splashBackground =
      BoxDecoration(gradient: Backgrounds.splashScreenBackGround());
  static BoxDecoration screensBackground =
      BoxDecoration(gradient: Backgrounds.screenBackGround());

  static BoxDecoration bottonDecoration = BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      gradient: Backgrounds.bottonBackGround(),
      borderRadius: BorderRadius.circular(20));
  static BoxDecoration bottonDecoration2 = BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      gradient: Backgrounds.bottonBackGround2(),
      borderRadius: BorderRadius.circular(20));

  static BoxDecoration cardDecoration = BoxDecoration(

      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
        // gradient: Backgrounds.logInBackGround(),
      borderRadius: BorderRadius.circular(0));

  static BoxDecoration alarmTitleDecoration = BoxDecoration(
      color: DasgbordColors.alarmTitle, borderRadius: BorderRadius.circular(0));
  static BoxDecoration alarmDialogDecoration = BoxDecoration(
      color: LightColors.backgroundColor,
      borderRadius: BorderRadius.circular(20));

  static TextStyle bottonText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.bottonText,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold);
  static TextStyle bottonWiteText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.h1TextFont,
      fontSize: 20.sp,

      fontWeight: FontWeight.bold);
  static TextStyle textFieldText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp);
  static TextStyle listItemText  = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp);
  static TextStyle lablListItemText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp , fontWeight: FontWeight.bold);
  static TextStyle textFieldText2 = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp);
  static TextStyle dropDawnitemsText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 10.sp);
  static TextStyle dropDawnText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp);

  static TextStyle labletextFieldText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 12.sp);
  static TextStyle titleFontStyle = TextStyle(
      fontSize: 20.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);
  static TextStyle drawerFontStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold) ;



  static TextStyle buttonTextFontStyle = TextStyle(
      fontSize: 5.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);
}
class AppDecorations {
  static BoxDecoration splashBackground =
  BoxDecoration(gradient: Backgrounds.splashScreenBackGround());
  static BoxDecoration screensBackground =
  BoxDecoration(gradient: Backgrounds.screenBackGround());

  static BoxDecoration bottonDecoration = BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      gradient: Backgrounds.bottonBackGround(),
      borderRadius: BorderRadius.circular(20));
  static BoxDecoration cardDecoration = BoxDecoration(

      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      // gradient: Backgrounds.logInBackGround(),
      borderRadius: BorderRadius.circular(0));

  static BoxDecoration alarmTitleDecoration = BoxDecoration(
      color: DasgbordColors.alarmTitle, borderRadius: BorderRadius.circular(0));
  static BoxDecoration alarmDialogDecoration = BoxDecoration(
      color: LightColors.backgroundColor,
      borderRadius: BorderRadius.circular(20));

  static TextStyle bottonText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.bottonText,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold);
  static TextStyle bottonWiteText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.h1TextFont,
      fontSize: 20.sp,

      fontWeight: FontWeight.bold);
  static TextStyle textFieldText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 5.sp);

  static TextStyle titleFontStyle = TextStyle(
      fontSize: 20.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);

  static TextStyle buttonTextFontStyle = TextStyle(
      fontSize: 5.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);
}

class AppLightDecorations {
  static BoxDecoration splashBackground =
  BoxDecoration(gradient: Backgrounds.splashScreenBackGround());
  static BoxDecoration screensBackground =
  BoxDecoration(gradient: Backgrounds.screenBackGround());

  static BoxDecoration bottonDecoration = BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      gradient: Backgrounds.bottonBackGround(),
      borderRadius: BorderRadius.circular(20));
  static BoxDecoration cardDecoration = BoxDecoration(

      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      // gradient: Backgrounds.logInBackGround(),
      borderRadius: BorderRadius.circular(0));

  static BoxDecoration alarmTitleDecoration = BoxDecoration(
      color: DasgbordColors.alarmTitle, borderRadius: BorderRadius.circular(0));
  static BoxDecoration alarmDialogDecoration = BoxDecoration(
      color: LightColors.backgroundColor,
      borderRadius: BorderRadius.circular(20));

  static TextStyle bottonText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.bottonText,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold);
  static TextStyle bottonWiteText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.h1TextFont,
      fontSize: 20.sp,

      fontWeight: FontWeight.bold);
  static TextStyle textFieldText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 5.sp);

  static TextStyle titleFontStyle = TextStyle(
      fontSize: 20.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);

  static TextStyle buttonTextFontStyle = TextStyle(
      fontSize: 5.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);
}
class AppDarkDecorations {
  static BoxDecoration splashBackground =
  BoxDecoration(gradient: Backgrounds.splashScreenBackGround());
  static BoxDecoration screensBackground =
  BoxDecoration(gradient: Backgrounds.screenBackGround());

  static BoxDecoration bottonDecoration = BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      gradient: Backgrounds.bottonBackGround(),
      borderRadius: BorderRadius.circular(20));
  static BoxDecoration cardDecoration = BoxDecoration(

      shape: BoxShape.rectangle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      // gradient: Backgrounds.logInBackGround(),
      borderRadius: BorderRadius.circular(0));

  static BoxDecoration alarmTitleDecoration = BoxDecoration(
      color: DasgbordColors.alarmTitle, borderRadius: BorderRadius.circular(0));
  static BoxDecoration alarmDialogDecoration = BoxDecoration(
      color: LightColors.backgroundColor,
      borderRadius: BorderRadius.circular(20));

  static TextStyle bottonText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.bottonText,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold);
  static TextStyle bottonWiteText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.h1TextFont,
      fontSize: 20.sp,

      fontWeight: FontWeight.bold);
  static TextStyle textFieldText = TextStyle(
      fontFamily: AppFontFamily.helvetice,
      color: DasgbordColors.inputTextFont,
      fontSize: 5.sp);

  static TextStyle titleFontStyle = TextStyle(
      fontSize: 20.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);

  static TextStyle buttonTextFontStyle = TextStyle(
      fontSize: 5.sp,
      color: DasgbordColors.primaryColors,
      fontWeight: FontWeight.bold,
      fontFamily: AppFontFamily.helvetice);
}
