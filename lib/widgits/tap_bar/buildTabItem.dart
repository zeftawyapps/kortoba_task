import 'package:flutter/cupertino.dart';

import '../../consts/views/colors.dart';

class BuildTapBarItem extends StatelessWidget {
  final bool isSelected;
  final IconData iconData ;

  const BuildTapBarItem({Key? key, required this.isSelected ,required  this.iconData }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85 ,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.5, color: isSelected == true ? DasgbordColors .  primaryColors : DasgbordColors.secondryColors ),
        ),
      ),
      child: Container(
        height: 30,
        constraints: BoxConstraints(
          maxWidth: 30,
        ),
        child: Icon(iconData , color: isSelected  ? DasgbordColors.primaryColors : DasgbordColors.h1TextFont
        ,size: isSelected? 35:  25,
        ),
      ),
    );
  }
}
