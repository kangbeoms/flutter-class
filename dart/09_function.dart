import 'dart:js_util';

main() {
addition(5, 3);
subtraction(5, 3);

Opeation operation = addition;
operation(10,2);

operation = subtraction;
operation(10,2);

callConstructor(10, 2, addition);

}

addition(int x, int y) {
  print('$x + $y = ${x+y}');

}

subtraction(int x, int y) {
  print('$x - $y = ${x-y}');

}

// typedef 선언
typedef Opeation(int x, int y);

// typedef 활용
claculation(int x, int y,Opeation opeation) {
      operation(x,y);
}
