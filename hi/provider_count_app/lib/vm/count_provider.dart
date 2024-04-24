import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  // get 함수 사용해 외부에서 접근이 가능하게 한다.
  int get count => _count;

  //더하기 
  add() {
    _count++;
    notifyListeners();   //업데이트 된 값을 구독자(widget) 에게 알림.
  }
  
  //빼기 
  subract() {
    _count--;
    notifyListeners();
  }
}