import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/views/assets.dart';
class Logo extends StatelessWidget {
    Logo({Key? key , this.hight = 100  , this.width= 100}) : super(key: key);
double width ; double hight;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAsset.imglogo)) ,
        shape: BoxShape.circle
      ),
    height: hight.h , width:  width.w  );


  }
}
