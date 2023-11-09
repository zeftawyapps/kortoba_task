import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/screen/prod_screen/list_data.dart';
import 'package:kortoba_task/widgits/loading.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_bloc.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_state.dart';
import 'package:kurtoba_module/model/cat_model.dart';

import '../../bloc/commerce_bloc.dart';
import '../../consts/views/colors.dart';

class ProdsScreen extends StatefulWidget {
  ProdsScreen({super.key});
  // CategoryModel categoryModel ;
  static const String path = '/prods';
  @override
  State<ProdsScreen> createState() => _ProdsScreenState();
}

class _ProdsScreenState extends State<ProdsScreen> {
  late CommerceBloc bloc;
  late CategoryModel categoryModel;
  bool isInit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = CommerceBloc();

    // bloc.getProducts( categoryModel.catId);
  }

  @override
  Widget build(BuildContext context) {
// get the data from the navigation
    categoryModel = ModalRoute.of(context)!.settings.arguments as CategoryModel;
    if (!isInit) bloc.getProducts(categoryModel.catId);

    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: [
            Hero(
              tag: "${categoryModel.catId}",
              child: Container(
                height: 100.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,

                      blurRadius: 1,
                      offset:
                      Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(categoryModel.img),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                          )),
                      Expanded(
                        child: Text(categoryModel.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.sp)),
                      ),
                      Expanded(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30.sp,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: BlocConsumer<CommerceModuleBaseBloc, CommerceModuleBaseState>(
                  bloc: bloc.prodbloc,
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        success: (data) {
                          setState(() {
                            isInit = true;
                          });
                        },
                        loading: () {
                          print("loading");
                        },
                        failure: (error, retry) {
                          print("error");
                          print(error);
                        });
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Container();
                      },
                      success: (data) {
                        return ListProd(prodList: data);
                      },
                      loading: () {
                        return Container(
                          child: Center(
                            child: Loading(
                              color: LightColors.textColor4,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
