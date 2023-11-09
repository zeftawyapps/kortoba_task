import 'package:intl/intl.dart';

extension DateTimeAddons on DateTime {
  String getDateForm(DateTime date, {String formate = "dd/MM/yyyy"}) {
    date = this ;
    return DateFormat(formate, "en").format(date);
  }
}