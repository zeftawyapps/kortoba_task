

import 'package:flutter/material.dart';

class AppStateAndSettings extends ChangeNotifier{
  int _itemIndex = 0;
  int get itemIndex => _itemIndex;
  set itemIndex(int value){
    _itemIndex = value;
    notifyListeners();
  }

}