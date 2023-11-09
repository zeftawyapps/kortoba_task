import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/consts/views/assets.dart';
import 'package:kortoba_task/consts/views/colors.dart';
import 'package:kortoba_task/screen/prod_details_screen.dart';
import 'package:kortoba_task/util/navigations/navigation_service.dart';
import 'package:kortoba_task/widgits/generators/input_form/input_fields/text_form_field_validation.dart';
import 'package:kortoba_task/widgits/loading.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_bloc.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_state.dart';
import 'package:kurtoba_module/model/cat_model.dart';
import 'package:kurtoba_module/model/prod_model.dart';

import '../../../bloc/commerce_bloc.dart';
import '../../prod_screen/prods_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CommerceBloc _prodBloc;
  List<bool> isFivorateArrived = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _prodBloc = CommerceBloc();
    _prodBloc.getCatigories();
    _prodBloc.getProducts(1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(AppAsset.imgoffer1),
                fit: BoxFit.cover,
                opacity: 0.5,
              )),
              child: Stack(
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.5),
                    child: Column(
                      children: [
                        Container(
                          height: 75.h,
                          color: Colors.white.withOpacity(0.5),
                          child: Center(
                            child: Row(
                              //add title and drawer icon
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                      size: 50.sp,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "الرئيسية",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            height: 50.h,
                            child: TextFormFieldValidation(
                              textStyle: TextStyle(
                                  color: Colors.black, fontSize: 20.sp),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                fillColor: Colors.white.withOpacity(0.9),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              keyData: "",
                              baseValidation: [],
                              hintText: "البحث",
                            ).getWedgetFormField(context),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppAsset.imgoffer1),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 200.h,
              child: BlocBuilder<CommerceModuleBaseBloc<List<CategoryModel>>,
                      CommerceModuleBaseState<List<CategoryModel>>>(
                  bloc: _prodBloc.catigorybloc,
                  builder: (c, s) {
                    return s.maybeWhen(orElse: () {
                      return Container();
                    }, loading: () {
                      return Center(
                        child: Loading(
                          color: LightColors.loading,
                        ),
                      );
                    }, success: (data) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data!.length,
                        itemBuilder: (c, i) {
                          return GestureDetector(
                            onTap: () {
                              NavigationService().navigateToPage(path: ProdsScreen.path , data: data[i]);
                            },
                            child: Hero(
                              tag:  "${data[i].catId}",
                              child: Container(
                                height: 150.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //add reduce

                                        // add shadow
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(
                                                2, 5), // changes position of shadow
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: NetworkImage(data![i].img),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      data[i].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    });
                  }),
            ),
            Container(
                height: 20.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "وضل حديثا",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                            color: LightColors.textColor3,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 300.h,
              width: 500.w,
              child: BlocBuilder<CommerceModuleBaseBloc<List<ProductionModel>>,
                      CommerceModuleBaseState<List<ProductionModel>>>(
                  bloc: _prodBloc.prodbloc,
                  builder: (c, s) {
                    return s.maybeWhen(orElse: () {
                      return Container();
                    }, loading: () {
                      return Center(
                        child: Loading(
                          color: LightColors.loading,
                        ),
                      );
                    }, success: (data) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data!.length,
                        itemBuilder: (c, i) {
                          isFivorateArrived.add(false);

                          return GestureDetector(
                            onTap: () {
                               NavigationService().navigateToPage(path: '/product_details', data: data[i]);
                            },
                            child: Hero(
                              tag: data[i].prodId,
                              child: Container(
                                height: 150.h,
                                width: 200.w,
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // add fivorate icon
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isFivorateArrived[i] =
                                                    !isFivorateArrived[i];
                                              });
                                            },
                                            child: Icon(
                                              isFivorateArrived[i]
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: LightColors.textColor2,
                                              size: 30.sp,
                                            ))),
                                    Center(
                                      child: Container(
                                        height: 120.h,
                                        width: 150.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          image: DecorationImage(
                                            image: NetworkImage(data![i].img),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      // show part of description
                                      " ${data[i].description.substring(0, 50)}...",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    // add price in row with icon
                                    Container(
                                      height: 20.h,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                data[i].price.toString(),
                                                style: TextStyle(
                                                    color: LightColors.botton,
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Icon(
                                                  Icons.add_shopping_cart,
                                                  color: LightColors.textColor,
                                                  size: 30.sp,
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    });
                  }),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
                height: 20.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "الاكثر رواجا",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                            color: LightColors.textColor3,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 300.h,
              width: 500.w,
              child: BlocBuilder<CommerceModuleBaseBloc<List<ProductionModel>>,
                      CommerceModuleBaseState<List<ProductionModel>>>(
                  bloc: _prodBloc.prodbloc,
                  builder: (c, s) {
                    return s.maybeWhen(orElse: () {
                      return Container();
                    }, loading: () {
                      return Center(
                        child: Loading(
                          color: LightColors.loading,
                        ),
                      );
                    }, success: (data) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data!.length,
                        itemBuilder: (c, i) {
                          isFivorateArrived.add(false);

                          return GestureDetector(
                            onTap: () {
                              NavigationService().navigateToPage(path: ProdDetailsScreens.path  , data: data[i]);
                            },
                            child: Container(
                              height: 150.h,
                              width: 200.w,
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // add fivorate icon
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isFivorateArrived[i] =
                                                  !isFivorateArrived[i];
                                            });
                                          },
                                          child: Icon(
                                            isFivorateArrived[i]
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: LightColors.textColor2,
                                            size: 30.sp,
                                          ))),
                                  Center(
                                    child: Container(
                                      height: 120.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          image: NetworkImage(data![i].img),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    // show part of description
                                    " ${data[i].description.substring(0, 50)}...",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  // add price in row with icon
                                  Container(
                                    height: 20.h,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              data[i].price.toString(),
                                              style: TextStyle(
                                                  color: LightColors.botton,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(
                                                Icons.add_shopping_cart,
                                                color: LightColors.textColor,
                                                size: 30.sp,
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    });
                  }),
            ),
            SizedBox(
              width: 500.w,
            )
          ],
        ),
      ),
    );
  }
}
