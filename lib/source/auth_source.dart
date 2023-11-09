import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:users_module/constes/api_urls.dart';
import 'package:users_module/https/commerce_http_urls.dart';
import 'package:users_module/interface/account.dart';
import 'package:users_module/source/accountLoginLogout/http/auth_http_acc.dart';
import 'package:users_module/utilis/errors/http_errors/bass_errors.dart';
import 'package:users_module/utilis/http_remotes/http_client.dart';

import 'package:users_module/modele/base_model/base_user_module.dart';
import 'package:users_module/utilis/firebase/firebase_account.dart';
import 'package:users_module/utilis/http_remotes/http_methos_enum.dart';

import '../models/user.model.dart';



class AppAuthHttpSource extends EmailPassowrdAuthHttpSource {
  String? email;
  String? pass;
  String? username;

  AppAuthHttpSource({  required String pass , required String username  }) : super(email: username, pass: pass) {

    this.pass = pass;
    this.username = username;

  }
  @override
  Future<UsersBaseModel> createAccount({Map<String , dynamic >? body  }) async {
    Map<String , dynamic >? allBody = {"email": email , "password": pass ,    }    ;
   if(body != null)
     allBody.addAll(body  );

    var user =     await UserHttpClient.UserzHttpClient(userToken: true).sendRequestObject(
        method: HttpMethod.POST,
        url: ApiUrls.createAccount,
        body:  allBody  ,
        cancelToken: CancelToken());


    if (user["status"] == "error") {
      var massage = user["massage"];
      throw (  massage["massage"] ?? user["massage"]  );
    }
    var data  = user["user"];
    UsersBaseModel userBaseModel = AppuserModel(
      email: data["email"],
      name: data["username"],
      id: data["id"].toString(),
      firstName: data["first_name"],
      lastName: data["last_name"],
    );
    return userBaseModel ;

  }

  @override
  Future<UsersBaseModel> logIn() async {

    var user =     await UserHttpClient.UserzHttpClient(userToken: true).sendRequestObject(
        method: HttpMethod.POST,
        url: ApiUrls.logIn,
        body:  {"username": username , "password": pass}   ,
        cancelToken: CancelToken());

    if (user["status"] == "error") {
      throw (  user["massage"]  );
    }



    var tocken = user["access"];

    UsersBaseModel userBaseModel = AppuserModel(
      email: email,
      token: tocken,
    );

    return  userBaseModel ;

  }

  @override
  Future<void> logOut() async {

    await UserHttpClient.UserzHttpClient(userToken: true).sendRequestObject(
        method: HttpMethod.POST,
        url: ApiUrls.logOut ,

        cancelToken: CancelToken());


  }
}
