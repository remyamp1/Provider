import 'package:flutter/material.dart';
class CounterProviver  extends ChangeNotifier{
  int _count=0;
  int get count=> _count;

  void incement(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
}