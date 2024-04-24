import 'package:flutter/material.dart';

class BmiCalc extends ChangeNotifier{
  int num1 = 0;
  int num2 = 0;
  String result = "";
  String what = "";
  Color whatColor = Colors.white;
  
  

    goCalc() {
      whatColor = Colors.black;
     double bmi = double.parse((num2 / ((num1 / 100) * 2)).toStringAsFixed(1));
     if (bmi <= 18.4) {
        result = bmi.toString();
        what = '저체중';
    }
    if (bmi >= 18.5 && bmi <= 22.9) {
      result = bmi.toString();
       what = '정상체중';
    }
    if (bmi >= 23 && bmi <= 24.9) {
    result = bmi.toString();
    what = '과체중';
    }
    if (bmi >= 25 ) {
       result = bmi.toString();
        what = '비만';
    }
  
      notifyListeners();
    }

}