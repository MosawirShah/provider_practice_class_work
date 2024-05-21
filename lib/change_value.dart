import 'package:flutter/cupertino.dart';

class ChangeValue with ChangeNotifier{
  int _value =0;

  get value => _value;

  void incrementValue(){
    _value ++;
    notifyListeners();
  }
  void decrementValue(){
    _value --;
    notifyListeners();
  }
}