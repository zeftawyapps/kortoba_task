import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kurtoba_module/model/prod_model.dart';

import '../consts/views/colors.dart';
import '../consts/views/decoration.dart';

class ProdDetailsScreens extends StatefulWidget {
  const ProdDetailsScreens({super.key});
  static const path  = "/product_details";

  @override
  State<ProdDetailsScreens> createState() => _ProdDetailsScreensState();
}

class _ProdDetailsScreensState extends State<ProdDetailsScreens> {
  bool isFivorate = false;
  bool isDetailsClecKed = false;
  @override
  Widget build(BuildContext context) {
    ProductionModel data =
        ModalRoute.of(context)!.settings.arguments as ProductionModel;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Hero(

            tag: data.prodId,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                   color: LightColors.textColor,
                                  size: 30.sp,
                                ))),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(data.img),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:50.h,
                        ),
                        Container(
                          height: 50.h,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10.w),

                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                  ) ,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          isFivorate ? Icons.favorite : Icons.favorite_border,
                                          color: LightColors.textColor2,
                                          size: 30.sp,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text("المفضلة",
                                            style: TextStyle(
                                                color: LightColors.textColor2,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold)),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                 padding: EdgeInsets.only(left: 10.w),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    
                                  ) ,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("مشاركة",
                                            style: TextStyle(
                                                color: LightColors.textColor,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(
                                          Icons.share ,
                                          color: LightColors.textColor,
                                          size: 30.sp,
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ) ,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(data.name,
                              style: TextStyle(
                                  color: LightColors.textColor,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: LightColors.textColor3,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(data.price.toString(),
                                    style: TextStyle(
                                        color: LightColors.botton,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              // rate
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(data.rate.toString(),
                                          style: TextStyle(
                                              color: LightColors.textColor,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isDetailsClecKed = !isDetailsClecKed;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: isDetailsClecKed ? 300.h : 30.h,
                            child: isDetailsClecKed
                                ? Text(data.description,
                                style: TextStyle(
                                    color: LightColors.textColor,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold))
                                : Row(
                              children: [
                                Expanded(
                                  child: Text("تفاصيل",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: LightColors.textColor3,
                                      size: 30.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        // add quntity and add to cart
                        Container(
                            height: 65.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    // width: 150.w,

                                    child: Row(
                                      children: [
                                        MaterialButton(
                                            onPressed: () {},
                                            child: Container(
                                              width: 50.w,
                                              height: 65.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(0),
                                                  color: LightColors.bottonbegn),
                                              child: Center(
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25.sp,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            )),
                                        Text("1",
                                            style: TextStyle(
                                                color: LightColors.textColor,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold)),
                                        MaterialButton(
                                            onPressed: () {},
                                            child: Container(
                                              width: 50.w,
                                              height: 65.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(0),
                                                  color: LightColors.bottonbegn),
                                              child: Center(
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25.sp,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("500 ُEL",
                                          style: TextStyle(
                                              color: LightColors.textColor,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20.h,
                        ),
                        MaterialButton(
                            onPressed: () {},
                            child: Container(
                              width: 250.w,
                              height: 65.h,
                              decoration: DashboardDecorations.bottonDecoration,
                              child: Center(
                                child: Text("نقل الى سلة ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        ,
      ),
    ) ;

  }
}
