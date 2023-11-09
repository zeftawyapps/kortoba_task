
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_configs.dart';
import 'app_louncher.dart';
import 'app_route.dart';


void main() async {
  AppConfigration.appType = AppType.DashBord;
  AppConfigration.envType = EnvType.stage;
  AppConfigration.backendInit();

  WidgetsFlutterBinding.ensureInitialized();
    AppRoute.routersInit();
  runApp(const AppLouncher());
}
