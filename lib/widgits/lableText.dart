import 'package:flutter/material.dart';

class LabalText extends StatelessWidget {
    LabalText({Key? key , required  this.text}) : super(key: key);
String text ;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(body: Container(child: Center(child:

      MaterialButton(onPressed: (){
        // UsersTestConnection().test();

      }, child:  Text("$text"),)
      ,),),);
  }
}
