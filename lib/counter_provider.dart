import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{

  int c = 0;

  counter(){
    c++;
    notifyListeners();
  }

}