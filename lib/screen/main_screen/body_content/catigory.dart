import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/util/navigations/navigation_service.dart';
import 'package:kortoba_task/widgits/loading.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_bloc.dart';
import 'package:kurtoba_module/bloc/base_bloc/base_state.dart';
import 'package:kurtoba_module/model/cat_model.dart';

import '../../../bloc/commerce_bloc.dart';
import '../../../consts/views/colors.dart';

class Catigory extends StatefulWidget {
  const Catigory({super.key});

  @override
  State<Catigory> createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {
  late  CommerceBloc bloc ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      bloc = CommerceBloc();
    bloc.getCatigories();
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
                  child: Text("التصنيفات",
                      style: TextStyle(
                          color: LightColors.textColor3, fontSize: 25.sp)),
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
              child:
                  BlocBuilder<CommerceModuleBaseBloc<List<CategoryModel>>, CommerceModuleBaseState <List<CategoryModel>>>(
                bloc: bloc .catigorybloc,
                builder: (c, s) {
                  return s.maybeWhen(orElse: () {
                    return Container();
                  }, loading: () {
                    return Container(
                      child: Center(
                        child: Loading(color: LightColors.textColor4,),
                      ),
                    );
                  }, success: (d) {
                    return Container(
                      child: ListView.builder(
                          itemCount: d!.length,
                          itemBuilder: (c , i ){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5 ),
                          child: Hero(
                            tag:  "${d[i].catId}",
                            child: GestureDetector(
                              onTap: (){

                                NavigationService().navigateToPage(path:  "/prods",data:    d[i]);

                               },
                              child: Container(
                                height: 120.h,
                                decoration: BoxDecoration(
                                  // background image
                                  image: DecorationImage(
                                    image: NetworkImage(d![i].img),
                                    fit: BoxFit.cover,
                                  ),
                                ) ,
                                child: Center(child: Container(
                                  color: Colors.black.withOpacity(0.5),
                                  child: Center(
                                    child: Text(d![i].name
                                    ,style: TextStyle(
                                      color:Colors.white ,
                                      fontSize: 30.sp ,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
