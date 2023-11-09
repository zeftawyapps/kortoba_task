import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kortoba_task/screen/main_screen/main_screen.dart';
import 'package:kurtoba_module/https/commerce_http_urls.dart';
import 'package:users_module/utilis/shardeprefrance/shard_check.dart';

import '../../consts/views/assets.dart';
import '../consts/views/decoration.dart';
import '../util/navigations/navigation_service.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String path = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isvisablity = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  void timer() async {
    // test connection
    try {
      Timer(Duration(seconds: 3), () {
         SharedPrefranceChecking sharedPrefranceChecking =
        SharedPrefranceChecking();

        sharedPrefranceChecking.IsUserRejised(isRegistAction:(data ){

          CommerceHttpHeader().setToken(data.token!);

          NavigationService().replacementToPage(path:MainScren.path );
        } , NotRegistAction: (){
          NavigationService().replacementToPage(path:LogInScreen.path );
        }) ;


        NavigationService().replacementToPage(path:LogInScreen.path );
      } );
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecorations
            .splashBackground, // this is the main reason of transparency at next screen. I am ignoring rest implementation but what i have achieved is you can see.

        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(AppAsset. imgLogin),
                  width: 200,
                  height: 200,
                ),


              ],
            )),
      ),
    );
  }
}
