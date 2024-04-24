
import 'package:get/get.dart';

class BmiCalc extends GetxController{
  int num1 = 0;
  int num2 = 0;
  String result = "";
  String what = "";
  bool whatColor = false;
  double whereIcon = 0;
  
  

    goCalc() {
      whatColor = true;
     double bmi = double.parse((num1 / ((num2 / 100) * 2)).toStringAsFixed(1));
     if (bmi <= 18.4) {
        result = bmi.toString();
        what = '저체중';
        whereIcon = 100;
        
    }
    if (bmi >= 18.5 && bmi <= 22.9) {
      result = bmi.toString();
       what = '정상체중';
       whereIcon = 150;
    }
    if (bmi >= 23 && bmi <= 24.9) {
    result = bmi.toString();
    what = '과체중';
    whereIcon = 200;
    }
    if (bmi >= 25 ) {
       result = bmi.toString();
        what = '비만';
        whereIcon  = 250;
    }
    update();
     
    }

}