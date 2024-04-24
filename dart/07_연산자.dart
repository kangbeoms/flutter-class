main() {
  // 초기값이 없을떄는 ?를 넣어준다
  int num = 0;
  num++;
  num--;

  // null을 쓸려하면 ? 를 반드시 써야한다
  int? num2 = null;
  print(num2);
  // num2 가 null 이면 8로 대채한다
  num2 ??= 8;

  print(num2);

  var num5 = 10;
  var num6 = 5;
  // 타입을 알아보기 위한 is 
  print(num5 is String);
  print(num5 is! String);

  // &&, ||, 나머지 %
  // 정수끼리 나누어도 실수로 나온다
  print(5 / 3);
  // 정수로 나오게 할려면 ~ 
  print(5 ~/ 3);

  // 반복문으로 구구단 2~9단 출력하기
    for(int j =2; j <=9; j++)
     for(int i =1; i <= 9; i++) {
        print('$j x $i = ${j * i}');
  }

}