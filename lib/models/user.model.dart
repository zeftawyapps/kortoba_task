import 'package:users_module/modele/base_model/base_user_module.dart';

class AppuserModel extends UsersBaseModel {
  static const  String  ageKey = "age" ;

 String ? firstName ;
 String ? lastName ;




 String ? token ;
  AppuserModel ({  String ? email , String ? id , String ? name , this.firstName , this.lastName , this.token })
      :super (email: email , uid:  id , name:  name );

  AppuserModel.   formJson(Map<String , dynamic> json ){
     email = json['email'] ;

      name = json['username'] ;
      firstName = json['first_name'] ;
      lastName = json['last_name'] ;
      token = json['token'] ;

  }
  Map<String, dynamic> toJson() {
    final _data =  super.map;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['token'] = token;
    _data['email'] = email;
    _data['id'] = uid;
    _data['username'] = name;
    

    return _data ;
  }
}