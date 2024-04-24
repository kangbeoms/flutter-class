main(){
  final String name = '유비';
  const String name1 = '조자룡';
  
  // final 과 const 의 차이점
  // final 은 컴파일 할 떄 값이 없어도 된다, final 은 실행이 될 떄 값이 들어와서 그 값을 바꿀수 없다
  final DateTime now1 = DateTime.now();
  print(now1);

  // const 는 컴파일 단계에 값을 지정하고 그 지정한 값을 바꿀수 없다.
  const DateTime now2 = DateTime.now();

}