

import 'package:flutter/cupertino.dart';

import 'colors.dart';


class Backgrounds{
  static  LinearGradient screenBackGround(){
   return LinearGradient(colors: [LightColors.  primaryColors , LightColors.secondryColors ] ,
   begin: Alignment.centerRight ,
       end:Alignment.centerLeft
   );
 }
  static  LinearGradient splashScreenBackGround(){
    return LinearGradient(colors: [LightColors.primaryColors , LightColors.secondryColors  ] ,
        begin: Alignment.bottomLeft ,
        end:Alignment.topRight

    );
  }


  static  LinearGradient bottonBackGround(){
    return LinearGradient(colors: [LightColors.bottonbegn ,LightColors.bottonEnd   ] ,
        begin: Alignment.bottomLeft ,
        end:Alignment.topRight
    );


  }
  static  LinearGradient bottonBackGround2(){
    return LinearGradient(colors: [DasgbordColors.bottonbegn2 ,DasgbordColors.bottonEnd2  ] ,
        begin: Alignment.bottomLeft ,
        end:Alignment.topRight
    );


  }

  static  LinearGradient logInBackGround(){
    return LinearGradient(colors: [DasgbordColors.background1 ,DasgbordColors.background1   ] ,
        begin: Alignment.bottomLeft ,
        end:Alignment.topRight
    );


  }

}