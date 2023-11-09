import 'package:flutter/cupertino.dart';
import '../../../generated/l10n.dart';
import 'base_validator.dart';

class EmailValidator extends BaseValidator {
  final String? message;
  EmailValidator({this.message});
  @override
  String getMessage(BuildContext context) {
    return message ?? S.of(context).invalid_email;
  }

  @override
  bool validate(String value) {
    final _emailRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return value.isNotEmpty && _emailRegExp.hasMatch(value);
  }
}
