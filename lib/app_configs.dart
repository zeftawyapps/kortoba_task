import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:kortoba_task/screen/splash.dart';
import 'package:kurtoba_module/https/commerce_http_urls.dart';
import 'package:kurtoba_module/utilis/http_remotes/http_client.dart';
import 'package:users_module/https/commerce_http_urls.dart';
import 'package:users_module/users_http_urls.dart';

abstract class AppConfigration {
  static AppType appType = AppType.App;
  static EnvType envType = EnvType.stage;
  static BackendState backendState = BackendState.remote;

  // static Future FirebaseInit() async {
  //   try {
  //     if (envType == EnvType.prod) {
  //       await Firebase.initializeApp(
  //           options: FirebaseOptions(
  //               apiKey: "AIzaSyA49ZvGLR5pubo048Ccw-RPFbNuzojGlYw",
  //               appId: "1:628847333393:android:6ee1b3e03b1cb8707861b0",
  //               messagingSenderId: "628847333393",
  //               projectId: "brix-crm",
  //               storageBucket: "brix-crm.appspot.com"));
  //     } else {
  //       await Firebase.initializeApp(
  //           options: FirebaseOptions(
  //               apiKey: "AIzaSyA49ZvGLR5pubo048Ccw-RPFbNuzojGlYw",
  //               appId: "1:628847333393:android:6ee1b3e03b1cb8707861b0",
  //               messagingSenderId: "628847333393",
  //               projectId: "brix-crm",
  //               storageBucket: "brix-crm.appspot.com"));
  //     }
  //   } on Exception catch (e) {
  //     print(e);
  //   }
  // }

  static Future backendInit() async {
    if (backendState == BackendState.local) {
      UsersUrlEnveiroment.urls( baseUrl: "http://127.0.0.1:5001/islamicqustions/europe-west3/apiQuiz"
          ,logIn: "/users/login/",createAccount: "/users/register/"
      );

    } else {
      UsersUrlEnveiroment.urls( baseUrl: "https://flutterapi.kortobaa.net"
      ,logIn: "/users/login/",createAccount: "/users/register/"
      );
      CommerceBaseUrlEnveiroment(baseUrl: "https://flutterapi.kortobaa.net");

    }
  }
  static Widget _launchWidget({required Widget web, required Widget mobile}) {
    if (kIsWeb) {
      return web;
    } else {
      return mobile;
    }
  }

  static Widget _launchWeb({required Widget web, required Widget dashboard}) {
    if (appType == AppType.App) {
      return web;
    } else {
      return dashboard;
    }
  }

  static Widget launchScreen() {
    return _launchWidget(
        web: _launchWeb(
          web: Container(),
          dashboard: SplashScreen(),
        ),
        mobile: SplashScreen());
  }

  static String baseRoute() {
    if (appType == AppType.App) {
      return " MainScreenView.path";
    } else {
      return "MainScreenView.path";
    }
  }
}

enum AppType { DashBord, App }

enum EnvType { localStage, stage, prod }

enum BackendState { local, remote }
