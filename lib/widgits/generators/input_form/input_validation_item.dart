 import 'package:flutter/material.dart';

import '../../../util/validators/base_validator.dart';
abstract  class InputValidationForm{

    String hintText ;
    String keyData ;
    Map<String , dynamic>? mapValue;
    List<BaseValidator>? baseValidation ;
   InputValidationForm( {
     required this.keyData , this.baseValidation ,
      required this.hintText , this.mapValue});

   Widget getWedgetFormField(BuildContext context );
    Widget getWedgetFormFieldAndAddTolist (BuildContext context , List<InputValidationForm> list) ;

}