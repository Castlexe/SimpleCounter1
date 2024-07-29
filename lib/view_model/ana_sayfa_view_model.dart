import 'package:flutter/material.dart';

class AnaSayfaViewModel with ChangeNotifier {

  int _sayac=0;

  int get sayac => _sayac;

  void sayacArttir(){
    _sayac++;
    notifyListeners();
  }

}