import 'package:flutter/material.dart';

import '../consts/views/colors.dart';
import '../consts/views/decoration.dart';
class AppBottom extends StatelessWidget {
    AppBottom({super.key , this.loading = false ,  required  this.onpress , required this.title});
var onpress;
bool loading = false;
String title = "ادخال";
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        onPressed:  onpress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: DashboardDecorations.bottonDecoration,
          child: Center(
            child: loading
                ? CircularProgressIndicator(
              color: DasgbordColors.botton,
            )
                : Text(
               title,
              style: DashboardDecorations.bottonText,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)));
  }
}
