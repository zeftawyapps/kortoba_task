import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/views/backgrunds.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen(
      {required this.title,
      required this.child,
        this.isDrawer = true,
        this.onfloatingActionButtonPressed,
      this.isFloatingActionButton = false,
      Key? key})
      : super(key: key);
  Widget child;
  bool isDrawer = true;
  VoidCallback? onfloatingActionButtonPressed;
  bool isFloatingActionButton = true;
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButton: Visibility(
          visible: isFloatingActionButton,
          child: FloatingActionButton(
            onPressed: onfloatingActionButtonPressed,
            child: Icon(Icons.add),
          ),
        ),
      
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                gradient: Backgrounds.screenBackGround(),
              ),
              child: Stack(
                children: [
                  Positioned.fill(child: Builder(builder: (context) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: IconButton(
                                            onPressed: () {
                                              if (isDrawer) {
                                                Scaffold.of(context)
                                                    .openDrawer();
                                              }else {
                                                Navigator.pop(context);
                                              }

                                            },
                                            icon:
                                            isDrawer?Icon(
                                              Icons.menu,
                                              color: Colors.white,
                                              size: 50.sp,
                                            ):Icon(
                                              Icons.arrow_back,
                                              color: Colors.white,
                                              size: 50.sp,
                                            ),

                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(flex: 5,
                                        child: Container(
                                            color: Colors.transparent,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                title,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ))),

                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, -5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: child,
                          ),
                        ),
                      ],
                    );
                  })),
                ],
              )),
        ));
  }
}
