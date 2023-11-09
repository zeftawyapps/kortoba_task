import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/views/colors.dart';
import '../../consts/views/decoration.dart';
class DataListItem extends StatelessWidget {
    DataListItem({super.key , required this.title , required this.value  });
String title ;
String value ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
           title,
          style: DashboardDecorations.labletextFieldText,
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: DashboardDecorations.listItemText,
        ),
      ],
        )     ;
  }
}
