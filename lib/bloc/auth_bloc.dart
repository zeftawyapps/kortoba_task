import 'package:kortoba_task/source/auth_source.dart';
import 'package:users_module/bloc/base_bloc/base_bloc.dart';
import 'package:users_module/modele/base_model/inhertid_models/user_model.dart';
import 'package:users_module/reposetory/auth_repo.dart';
import 'package:users_module/source/accountLoginLogout/auth_email_source.dart';
import 'package:users_module/source/accountLoginLogout/http/auth_http_acc.dart';
import 'package:users_module/utilis/shardeprefrance/shard_check.dart';

import '../models/user.model.dart';
import '../reposatory/auth_repo.dart';


class AuthBloc {
  String emailKey = "email";
  String nameKey = "username";
  String passKey = "password";
  String phoneKey = "phone";
  String firsName = "first_name";
  String lastName = "last_name";

  UserModuleBaseBloc<AppuserModel> userModuleBaseBloc =
      UserModuleBaseBloc<AppuserModel>();

  void signUp({required Map<String, dynamic> map}) async {
    AppAuthRepo accountSource = AppAuthRepo( AppAuthHttpSource( username : map[nameKey], pass: map[passKey]  ));
    userModuleBaseBloc.loadingState();
    var result = await accountSource.createAccountAndProfile(

        AppuserModel ( email: map[emailKey] , firstName: map[firsName] , lastName: map[lastName] , name: map[nameKey] ) );
    result.pick(onData: (v) {

      userModuleBaseBloc.successState(  AppuserModel.formJson(v.map));
    },
        onError: (error) {
      userModuleBaseBloc.failedState(error, () {});
    });
  }

  void logIn({required Map<String, dynamic> map}) async {
    AppAuthRepo accountSource = AppAuthRepo(AppAuthHttpSource(  pass: map[passKey] , username: map[nameKey]));
    userModuleBaseBloc.loadingState();
    var result = await accountSource.logIn();
    result.pick(onData: (v) {
 SharedPrefranceChecking sharedPrefranceChecking =  SharedPrefranceChecking();
 sharedPrefranceChecking.setDataInShardRefrace(    email: v.email! , pass: map[passKey]!
 , token: v.token!
 );
      userModuleBaseBloc.successState( AppuserModel.formJson(v.toJson()));
    }, onError: (error) {
      userModuleBaseBloc.failedState(error, () {});
    });
  }

}
