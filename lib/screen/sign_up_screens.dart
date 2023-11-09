import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kortoba_task/bloc/auth_bloc.dart';
import 'package:kortoba_task/screen/login_screen.dart';
import 'package:kortoba_task/screen/main_screen/main_screen.dart';
import 'package:kortoba_task/widgits/alarm/wedgets_functions.dart';
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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String path = "/signUp";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  ValidationsForm form = ValidationsForm();
  bool isloading = false;
  AuthBloc authBloc = AuthBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: BlocListener<UserModuleBaseBloc, UserModuleBaseState>(
                    bloc: authBloc.userModuleBaseBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        loading: () {
                          setState(() {
                            isloading = true;
                          });
                        },
                        failure: (e , s) {

                          // alarm error  with dialog
                           showDialog(context: context, builder:
                           (c)=>showAlarme(context, "خطا ادخال", ""
                               "من فضلك ادخل البيانات بشكل صحيح")
                           );
                          setState(() {
                            isloading = false;
                          });
                        },
                        success: (d) {
                          setState(() {
                            isloading = false;
                          });


                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("تم التسجيل بنجاح"),
                          ));
                          NavigationService()
                              .replacementToPage(path: LogInScreen.path);
                        },
                      );
                    },
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
                              "حساب جديد",
                              style: TextStyle(
                                  color: LightColors.textColor2,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "مرحبا بك ، قم بملأ البيانات للتسجيل",
                              style: TextStyle(
                                  color: LightColors.textColor3,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            form.buildChild(
                                context: context,
                                mainAxisAlignment: MainAxisAlignment.start,
                                child: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "اسم المستخدم",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "username",
                                          baseValidation: [
                                            RequiredValidator(),
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "البريد الالكتروني",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "email",
                                          baseValidation: [
                                            RequiredValidator(),
                                            EmailValidator()
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "الاسم الأول",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "first_name",
                                          baseValidation: [
                                            RequiredValidator(),
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "الاسم الأخير",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "last_name",
                                          baseValidation: [
                                            RequiredValidator(),
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "كلمة السر",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "password",
                                          isPssword: true,
                                          baseValidation: [
                                            RequiredValidator(),
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "تأكيد كلمة السر",
                                      style: TextStyle(
                                          color: LightColors.textColor3,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  TextFormFieldValidation(
                                          mapValue: form.dataMap,
                                          textStyle: DashboardDecorations
                                              .textFieldText,
                                          isPssword: true,
                                          decoration: InputDecoration(
                                            labelStyle: DashboardDecorations
                                                .textFieldText,
                                          ),
                                          keyData: "password2",
                                          baseValidation: [
                                            RequiredValidator(),
                                          ],
                                          hintText: "")
                                      .getWedgetFormFieldAndAddTolist(
                                          context, form.inputValidationForm),
                                ]),
                            SizedBox(
                              height: 20.h,
                            ),
                            MaterialButton(
                                    onPressed: () {
                                      var map = form.getInputData();
                                      if (map["password"] != map["password2"]) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("كلمة السر غير متطابقة"),
                                        ));
                                        return;
                                      }
                                      authBloc.signUp(map: map);
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
                                              child: Text("تسجيل",
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
                                  " لديك حساب ؟",
                                  style: TextStyle(
                                      color: LightColors.textColor3,
                                      fontSize: 18.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    NavigationService().replacementToPage(
                                        path: LogInScreen.path);
                                  },
                                  child: Text(
                                    " دخول",
                                    style: TextStyle(
                                        color: LightColors.textColor2,
                                        fontSize: 18.sp,
                                        decoration: TextDecoration.underline),
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
