import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/consts/views/colors.dart';
import 'package:kortoba_task/screen/card_screen.dart';
import 'package:kortoba_task/screen/main_screen/content.dart';
import 'package:kortoba_task/util/navigations/navigation_service.dart';
import 'package:provider/provider.dart';

import '../../provider/app_states.dart';
import 'bottom_bar.dart';
class MainScren extends StatefulWidget {
  const MainScren({super.key});
static const String path = "/mainScreen";
  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {
  @override
  Widget build(BuildContext context) {
    // add provider to get the current index of the bottom navigation bar
  final appState = Provider.of<AppStateAndSettings>(context);
     return SafeArea(
      child: Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10),
          child: FloatingActionButton(

            backgroundColor: LightColors.textColor2,
            onPressed: () {
              NavigationService().navigateToPage(path:CardScreen.path);
            },
            child: Icon(Icons.add_shopping_cart),

          ),
        ) ,
         drawer: Drawer(),

        body: Content(),
        bottomNavigationBar:
        BottomBar()

      ),
    );
  }
}
