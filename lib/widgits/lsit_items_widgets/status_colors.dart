import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StatusConainer extends StatelessWidget {
    StatusConainer({super.key , required this.status , required this.title});
int status ;
String title ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 80.w,
      decoration: BoxDecoration(
        color: status == 1 ? Colors.green : status == 2 ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black , fontSize: 20.sp
        ),
      )),
    ) ;
  }
}
