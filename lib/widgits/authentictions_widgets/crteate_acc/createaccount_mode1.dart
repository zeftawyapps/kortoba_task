import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../input_text_field.dart';

class CreateAccountsMode1 extends StatefulWidget {
    CreateAccountsMode1({Key? key , required this.inputTextFiilds}) : super(key: key);
List<InputTextFeild> inputTextFiilds  ;
  @override
  State<CreateAccountsMode1> createState() => _CreateAccountsMode1State();
}

class _CreateAccountsMode1State extends State<CreateAccountsMode1> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child:Column(children: [
        Text( "Sign up " ) ,
        Form(child: Column(
        children:widget.inputTextFiilds
        ,))
      ],),
    ),);
  }

}
