import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../consts/views/colors.dart';
import '../../provider/app_states.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // add provider to get the current index of the bottom navigation bar
    final appState = Provider.of<AppStateAndSettings>(context);

    return BottomAppBar(
      height: 100.h,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      appState.itemIndex = 0;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: appState.itemIndex == 0
                              ? LightColors.bottomBarItemSelected
                              : LightColors.textColor,
                          size: 25.sp,
                        ),
                        Text(
                          "الرئيسية",
                          style: TextStyle(
                            color: appState.itemIndex == 0
                                ? LightColors.bottomBarItemSelected
                                : LightColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      appState.itemIndex = 1;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          color: appState.itemIndex == 1
                              ? LightColors.bottomBarItemSelected
                              : LightColors.textColor,
                          size: 25.sp,
                        ),
                        Text(
                          "الاقسام",
                          style: TextStyle(
                            color: appState.itemIndex == 1
                                ? LightColors.bottomBarItemSelected
                                : LightColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      appState.itemIndex = 2;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: appState.itemIndex == 2
                              ? LightColors.bottomBarItemSelected
                              : LightColors.textColor,
                          size: 25.sp,
                        ),
                        Text(
                          "المفضلة",
                          style: TextStyle(
                            color: appState.itemIndex == 2
                                ? LightColors.bottomBarItemSelected
                                : LightColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      appState.itemIndex = 3;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: appState.itemIndex == 3
                              ? LightColors.bottomBarItemSelected
                              : LightColors.textColor,
                          size: 25.sp,
                        ),
                        Text(
                          "الحساب",
                          style: TextStyle(
                            color: appState.itemIndex == 3
                                ? LightColors.bottomBarItemSelected
                                : LightColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
