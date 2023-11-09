import 'package:flutter/material.dart';

import '../consts/views/colors.dart';
import '../util/navigations/navigation_service.dart';
class GoBack extends StatelessWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      NavigationService().goBack();
    } ,
      child:
      Icon(Icons.arrow_back_ios ,size: 30,
        color: DasgbordColors.primaryColors,),
    );
  }
}
