 import 'package:flutter/material.dart';
import 'package:kortoba_task/screen/card_screen.dart';
import 'package:kortoba_task/screen/login_screen.dart';
import 'package:kortoba_task/screen/main_screen/main_screen.dart';
import 'package:kortoba_task/screen/prod_details_screen.dart';
import 'package:kortoba_task/screen/prod_screen/prods_screen.dart';
import 'package:kortoba_task/screen/sign_up_screens.dart';
import 'util/navigations/navigation_service.dart';
abstract class AppRoute{
  static Map<String, Widget> _router = {
    "/logIn":LogInScreen() ,
    "/mainScreen":MainScren() ,
    "/signUp":SignUpScreen() ,
    "/card":CardScreen() ,
    "/prods":ProdsScreen() ,
    "/product_details":ProdDetailsScreens() ,
  };

  static void routersInit() {
    NavigationService().setRouters(_router);
  }

}