import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/consts/views/colors.dart';
import 'package:kurtoba_module/model/pay_model.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  static const String path = '/card';

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<PayModel> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = setDatq();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: Text(
          "السلة",
          style: TextStyle(
              color: LightColors.textColor3,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: Colors.white,
                  height: 70.h,
                  child: Row(children: [
                    Expanded(
                        child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "  (${list.length}) ",
                            style: TextStyle(
                                color: LightColors.bottonbegn,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "العناصر",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold)),
                      ]),
                    )),
                    SizedBox(
                      width: 70.w,
                    ),
                    Expanded(
                        child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: " الاجمالي ",
                            style: TextStyle(
                                color: LightColors.bottonbegn,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "1655 ُEL",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold)),
                      ]),
                    )),
                  ]),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (c, i) {
                      return Container(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
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
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(list[i].description,
                                            style: TextStyle(
                                                color: LightColors.textColor,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 50.h,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                              list[i].price.toString() + " ُEL",
                                              style: TextStyle(
                                                  color: LightColors.botton,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
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
                                                  color:
                                                      LightColors.bottonbegn),
                                              child: Center(
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                  color:
                                                      LightColors.bottonbegn),
                                              child: Center(
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
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

// delet icon
                                Expanded(
                                  child: Container(
                                    height: 65.h,
                                    color: LightColors.textColor2,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // list.removeAt(i);
                                        });
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.delete_forever,
                                          color: Colors.white,
                                          size: 30.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                  color: LightColors.bottonbegn,
                  height: 100.h,
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                            "لديك كوبون خصم ؟",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Expanded(
                            child: Container(
                              child: Row(
                          children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "ادخل كوبون الخصم",
                                    hintStyle: TextStyle(
                                        color: LightColors.textColor4,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: LightColors.textColor4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                                SizedBox(
                                  width: 10.w,) ,
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20 ),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "تطبيق الكوبون",
                                      style: TextStyle(color: LightColors.textColor4),
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                              )
                          ],
                        ),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                // bottun pay
                Container(
                  // total and tax value
                  height: 100.h,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                              child: Text("الاجمالي",
                                  style: TextStyle(
                                      color: LightColors.textColor4,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("1655 ُEL",
                                    style: TextStyle(
                                        color: LightColors.textColor,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                              child: Text("ضرائب",
                                  style: TextStyle(
                                      color: LightColors.textColor4,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("50 ُEL",
                                    style: TextStyle(
                                        color: LightColors.textColor,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: 65.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: LightColors.bottonbegn),
                      child: Center(
                        child: Text(
                          "إتمام الشراء",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PayModel> setDatq() {
    List<PayModel> list = [
      PayModel(
        prodId: 1,
        name: "m525",
        description: "Samsung Galaxy A6 Dual SIM - 64GB, 4GB RAM, 4G LTE, Gold",
        img: "assets/modeled_img/f1.png",
        price: 20.55,
        quantity: 1,
        rate: 4.5,
      ),
      PayModel(
          prodId: 2,
          name: "n6545",
          description:
              "قلادة نسائية مطلية بالذهب على شكل شكل إنفينيتي مرصعة بالتوباز الأبيض من ديفاز دايموند",
          img: "assets/modeled_img/f2.png",
          price: 50.55,
          quantity: 1 ,
          rate: 4.5),

    ];
    return list;
  }
}
