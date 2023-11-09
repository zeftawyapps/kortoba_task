import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/consts/views/colors.dart';

import '../../../consts/views/decoration.dart';
import 'package:kurtoba_module/model/fivorate.model.dart';

class Fivorate extends StatefulWidget {
  const Fivorate({super.key});

  @override
  State<Fivorate> createState() => _FivorateState();
}

class _FivorateState extends State<Fivorate> {
  List<FivorateModeel> list = [];
  List<bool> isFivorate = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = setFivorate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 100.h,
            width: 1.sw,
// add shadow
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,

                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: LightColors.primaryColors,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Icon(
                  Icons.menu,
                  color: LightColors.textColor3,
                  size: 30.sp,
                )),
                Expanded(
                  child: Text("المفضلة",
                      style: TextStyle(
                          color: LightColors.textColor3, fontSize: 30.sp)),
                ),
                Expanded(
                    child: Icon(
                  Icons.search,
                  color: LightColors.textColor3,
                  size: 30.sp,
                )),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (c, i) {
                    isFivorate.add(true);
                    return Container(
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
                                image: AssetImage(list[i].img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(list[i].description,
                              style: TextStyle(
                                  color: LightColors.textColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(list[i].price.toString(),
                                style: TextStyle(
                                    color: LightColors.botton,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          MaterialButton(
                              onPressed: () {},
                              child: Container(
                                width: 250.w,
                                height: 65.h,
                                decoration:
                                    DashboardDecorations.bottonDecoration,
                                child: Center(
                                  child: Text("نقل الى سلة التسوق",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp)),
                                ),
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  List<FivorateModeel> setFivorate() {
    List<FivorateModeel> list = [
      FivorateModeel(
        prodId: 1,
        rate: 4.5 ,
        name: "m525",
        description: "Samsung Galaxy A6 Dual SIM - 64GB, 4GB RAM, 4G LTE, Gold",
        img: "assets/modeled_img/f1.png",
        price: 20.55,
      ),
      FivorateModeel(
          prodId: 2,
          name: "n6545",
          description:
              "قلادة نسائية مطلية بالذهب على شكل شكل إنفينيتي مرصعة بالتوباز الأبيض من ديفاز دايموند",
          img: "assets/modeled_img/f2.png",
          price: 50.55 ,
      rate: 4.5
      ) ,
    ];
    return list;
  }
}
