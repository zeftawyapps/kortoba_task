import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/consts/views/colors.dart';
import 'package:kurtoba_module/model/prod_model.dart';

import '../../consts/views/decoration.dart';

class ListProd extends StatefulWidget {
  ListProd({super.key, required this.prodList});
  List<ProductionModel> prodList;
  @override
  State<ListProd> createState() => _ListState();
}

class _ListState extends State<ListProd> {
  List<bool> isDetailsClecKed = [];
  List<bool> isFivorate = [];
  @override
  Widget build(BuildContext context) {
    if (widget.prodList.length == 0) {
      return Center(
          child: Text("لا يوجد منتجات",
              style: TextStyle(
                  color: LightColors.textColor,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold)));
    } else {
      return ListView.builder(
          itemCount: widget.prodList.length,
          itemBuilder: (c, i) {
            isDetailsClecKed.add(false);
            isFivorate.add(false);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFivorate[i] = !isFivorate[i];
                                });
                              },
                              child: Icon(
                                isFivorate[i]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: LightColors.textColor2,
                                size: 30.sp,
                              ))),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(widget.prodList[i].img),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(widget.prodList[i].name,
                            style: TextStyle(
                                color: LightColors.textColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(
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
                              child: Text(widget.prodList[i].price.toString(),
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
                                    child: Text(widget.prodList[i].rate.toString(),
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
                            isDetailsClecKed[i] = !isDetailsClecKed[i];
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: isDetailsClecKed[i] ? 300.h : 30.h,
                          child: isDetailsClecKed[i]
                              ? Text(widget.prodList[i].description,
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
                                                borderRadius:
                                                    BorderRadius.circular(0),
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
                                                borderRadius:
                                                    BorderRadius.circular(0),
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
                                      color: Colors.white, fontSize: 15.sp ,

                                  fontWeight: FontWeight.bold
                                  )),
                            ),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }
}
