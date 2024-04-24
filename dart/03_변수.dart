main() {
  // 문자열
  String str1 = '유비';
  String str2 = '장비';
  // 문자열 연결 방식
  print(str1 + ' : ' + str2); 

  // 문자열 보간법 
  print('$str1 : $str2');

  // 정수의 문자열 보간법
  int intNum1 = 170;
  int intNum2 = 70;
    // 계산을 변수로 포함
  print('intNum1과 intNum2의 합은 ${intNum1 + intNum2} 입니다');

  // var 와 dtnamic 
  var name = '유비';
  // var 는 처음 타입을 정해줄 때 그 타입으로 정해진다
  name = '관우';
  name = 1;
  
  dynamic name1 = '장비';
  name1 = '조자룡';
  name1 = 10;
}