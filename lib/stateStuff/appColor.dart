import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appColor with ChangeNotifier{
  bool _isLB = true;

  bool get isLB => _isLB;
  set isLB(bool value){
    _isLB = value;
    notifyListeners();
  }

  Color get color => (_isLB) ? Colors.lightBlue : Colors.amber;
}