main() {
  bool isPublic = true;
  // 서버에서 json으로 값을 주고받을 떄 타입이 정해지지 않은 경우 var 를 사용한다
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);
  var number = 42;
  printInteger(number);

  
}

printInteger(int aNumber) {
        // dart 언어는 '' 안에 변수를 사용할수 있다 
      print('The Number is $aNumber');
}