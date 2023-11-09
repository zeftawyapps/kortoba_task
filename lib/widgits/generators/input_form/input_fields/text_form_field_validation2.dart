 import 'package:flutter/material.dart';

import '../input_validation_item.dart';

class TextFormFieldValidation2 extends InputValidationForm{
  TextFormField textFormField ;

  TextFormFieldValidation2({
    required   this.textFormField,
    required super.keyData, required super.baseValidation,  required super.hintText});
@override
  Widget getWedgetFormField(BuildContext context) {
    mapValue = Map<String , dynamic>();
 return Padding(
   padding: const EdgeInsets.symmetric(vertical: 5),
   child: textFormField ,
 );
  }

  @override
  Widget getWedgetFormFieldAndAddTolist(BuildContext context, List<InputValidationForm> list) {
    mapValue = Map<String , dynamic>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: textFormField ,
    );
  }
}