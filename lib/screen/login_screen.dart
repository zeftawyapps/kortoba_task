import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/bloc/auth_bloc.dart';
import 'package:kortoba_task/screen/main_screen/main_screen.dart';
import 'package:kortoba_task/screen/sign_up_screens.dart';
import 'package:users_module/bloc/base_bloc/base_bloc.dart';
import 'package:users_module/bloc/base_bloc/base_state.dart';

import '../../consts/views/colors.dart';
import '../../util/validators/email_validator.dart';
import '../../util/validators/required_validator.dart';
import '../../widgits/generators/input_form/form_validations.dart';
import '../../widgits/generators/input_form/input_fields/text_form_field_validation.dart';
import '../consts/views/assets.dart';
import '../consts/views/decoration.dart';
import '../util/navigations/navigation_service.dart';
import '../widgits/alarm/wedgets_functions.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  static String path = "/logIn";

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  ValidationsForm form = ValidationsForm();
  bool isloading = false;
late   AuthBloc authBloc ; 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authBloc = AuthBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: AppDecorations.splashBackground,
          child: Center(
            child: FadeIn(
              duration: Duration(seconds: 1),
              child: Container(
                height: 700.h,
                width: 300.w,
                decoration: BoxDecoration(
                  // add reduce
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: BlocListener<UserModuleBaseBloc, UserModuleBaseState>(
  bloc: authBloc.userModuleBaseBloc,
  listener: (context, state) {
    state.whenOrNull(
      success: (data) {
         NavigationService().replacementToPage(path: MainScren.path);
      },
      failure: (error, retry) {
        setState(() {
          isloading = false;
        });
        showDialog(context: context, builder:
            (c)=>showAlarme(context, "خطا ادخال", ""
            "من فضلك ادخل البيانات بشكل صحيح")
        );
      },
loading: () {
        setState(() {
          isloading = true;
        });
      },
    );
  },
  child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(AppAsset.imgLogin),
                            height: 200.h,
                            width: 200.w,
                          ),
                          Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color:LightColors.textColor2,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "من فضلك قم بالدخول لإتمام الشراء ",
                            style: TextStyle(
                                color: LightColors.textColor3, fontSize: 18.sp),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          form.buildChild( context:  context,mainAxisAlignment: MainAxisAlignment.start,
                              child:  [

                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "اسم المستخدم",

                                style: TextStyle(
                                    color: LightColors.textColor3, fontSize: 18.sp),
                              ),
                            ),
                            TextFormFieldValidation(
                                mapValue: form.dataMap,
                                textStyle: DashboardDecorations.textFieldText,
                                decoration: InputDecoration(
                                  labelStyle:
                                      DashboardDecorations.textFieldText,
                                ),
                                keyData: AuthBloc().nameKey,
                                baseValidation: [
                                  RequiredValidator(),

                                ],
                                hintText: "").getWedgetFormFieldAndAddTolist(context, form.inputValidationForm),

                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "كلمة المرور",
                                style: TextStyle(
                                    color: LightColors.textColor3, fontSize: 18.sp),
                              ),
                            ),
                            TextFormFieldValidation(
                                mapValue: form.dataMap,
                                textStyle: DashboardDecorations.textFieldText,
                                isPssword: true,
                                decoration: InputDecoration(
                                  labelStyle:
                                      DashboardDecorations.textFieldText,
                                  // prefixIcon: Icon(
                                  //   Icons.lock,
                                  //   color: DasgbordColors.inputTextFont,
                                  // )
                                ),
                                keyData: AuthBloc().passKey,
                                baseValidation: [RequiredValidator()],
                                hintText: "")  .getWedgetFormFieldAndAddTolist(context, form.inputValidationForm),
                          ]),
                          SizedBox(
                            height: 20.h,
                          ),
                          MaterialButton(
                                  onPressed: () {
                                    // NavigationService().replacementToPage(
                                    //     path: MainScren.path);
                                    var data = form.getInputData();
                                    authBloc.logIn(map: data );
                                  },
                                  child: Container(
                                    width: 250.w,
                                    height: 65.h,
                                    decoration:
                                        DashboardDecorations.bottonDecoration,
                                    child: isloading
                                        ? Center(
                                            child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ))
                                        : Center(
                                            child: Text("دخول",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp)),
                                          ),
                                  ))
                              .animate()
                              .shimmer(
                                  duration: Duration(seconds: 1),
                                  delay: Duration(seconds: 1)),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ليس لديك حساب ؟",
                                style: TextStyle(
                                    color:  LightColors.textColor3 , fontSize: 18.sp),
                              ),
                              SizedBox(
                                width: 10.w,) ,
                              GestureDetector(
                                onTap: () {
                                 NavigationService().replacementToPage(path: SignUpScreen.path);
                                },
                                child: Text(
                                  "تسجيل",
                                  style: TextStyle(
                                      color: LightColors.textColor2, fontSize: 18.sp
                                  ,  decoration: TextDecoration.underline
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
