import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/views/colors.dart';
import '../../consts/views/decoration.dart';
import '../../consts/views/fons.dart';

Widget showAlarme ( BuildContext context ,  String title , String msg  ){

  return AlertDialog(
    title:  Container(
      decoration:DashboardDecorations.alarmTitleDecoration ,
      child:  Center(child: Text('$title' ,

      style: TextStyle(
        fontFamily: AppFontFamily.helvetice,
        color: DasgbordColors.h1TextFont,
        fontSize: 12.sp,)
      )),),
    content: SingleChildScrollView(
      child: ListBody(
        children:   <Widget>[
          Text('$msg' , style: TextStyle(
              fontFamily: AppFontFamily.helvetice,
              color: DasgbordColors.h1TextFont,
              fontSize: 10.sp,)),
        ],
      ),
    ),
    actions: <Widget>[
      TextButton(

        child:   Text('حسنا' ,style: TextStyle(
          fontFamily: AppFontFamily.helvetice,
          color: DasgbordColors.h1TextFont,
          fontSize: 10.sp,) ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  ).animate().shake(duration: 500.ms).scale(duration: 500.ms);
}
Widget showAlarmeYesNo ( BuildContext context ,  String title , String msg  ){

  return AlertDialog(

    title:  Container(
      decoration:DashboardDecorations.alarmTitleDecoration ,
      child:  Center(child: Text('$title' ,

          style: TextStyle(
            fontFamily: AppFontFamily.helvetice,
            color: DasgbordColors.h1TextFont,
            fontSize: 12.sp,)
      )),),
    content: SingleChildScrollView(
      child: ListBody(
        children:   <Widget>[
          Text('$msg' , style: TextStyle(
            fontFamily: AppFontFamily.helvetice,
            color: DasgbordColors.h1TextFont,
            fontSize: 10.sp,)),
        ],
      ),
    ),
    actions: <Widget>[
      TextButton(

        child:   Text('نعم' ,style: TextStyle(
          fontFamily: AppFontFamily.helvetice,
          color: DasgbordColors.h1TextFont,
          fontSize: 10.sp,) ),
        onPressed: () {
          Navigator.of(context).pop(true );
        },
      ),
      TextButton(

        child:   Text('لا' ,style: TextStyle(
          fontFamily: AppFontFamily.helvetice,
          color: DasgbordColors.h1TextFont,
          fontSize: 10.sp,) ),
        onPressed: () {
          Navigator.of(context).pop(false );
        },
      ),
    ],
  ).animate(). scale(duration: 500.ms);
}
