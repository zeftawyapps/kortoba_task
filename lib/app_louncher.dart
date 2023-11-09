
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/util/navigations/navigation_service.dart';
 import 'package:provider/provider.dart';
import 'app_configs.dart';
import 'consts/views/themes.dart';
import 'generated/l10n.dart';
import 'provider/app_states.dart';
import 'widgits/iamges/add_image_profider.dart';
class AppLouncher extends StatelessWidget {
  const AppLouncher({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddImageProviderModule>(create: (c) => AddImageProviderModule()),
        ChangeNotifierProvider<AppStateAndSettings>(create: (c) => AppStateAndSettings()),

      ] ,
      child: ScreenUtilInit(
          minTextAdapt: true,
          designSize: const Size(375, 812),

          builder: (context ,  Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false ,
              navigatorKey: NavigationService().navigatorKey,
              onGenerateRoute: NavigationService().generateRoute ,
              supportedLocales: S.delegate.supportedLocales,
              locale: Locale("ar"),
              // These delegates make sure that the localization data for the proper language is loaded
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme:  Themes.lightTheme ,
              darkTheme: Themes.darkTheme,
              themeMode: ThemeMode.light,
              home: AppConfigration.launchScreen(),
              // initialRoute: AppConfigration.baseRoute(),
            );
          }
      ),
    );
  }
}
