import 'package:flutter/cupertino.dart';

class chart with ChangeNotifier{
  int _jumlah = 0;

  int get ambilJumlah => _jumlah;
  set ambilJumlah (int value){
    _jumlah = value;
    notifyListeners();
  }
}

class money with ChangeNotifier{
  int _uang = 10000;

  int get ambilUang => _uang;
  set ambilUang (int value){
    _uang = value;
    notifyListeners();
  }
}