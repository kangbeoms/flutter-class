import 'package:get/get.dart';

class CalcGetX extends GetxController{
  int num1 = 0;
  int num2 = 0;
  int  addresult = 0;
  int  subresult = 0;
  int  mulresult = 0;
  double  divresult = 0.0;


  calcAll() {
    add();
    sub();
    mul();
    div();
    update();
  }

add() {
    addresult = num1 + num2;
  
}

sub() {
  subresult = num1 - num2;
 
}

mul () {
  mulresult = num1 * num2;

}

div() {
  divresult = (num1.toDouble() / num2.toDouble());
}
}