main(){
  // Map : Key 와 Value로 이루어진 collection 
    Map fruits = {
      'apple' : '사과',
      'grape' : '포도',
      'watermelon' : '수박',
    };
    
    print(fruits['apple']);

    fruits['watermelon'] = '시원한 수박';
    print(fruits);
    
    fruits['banana'] = "바나나";
    print(fruits);

    // map 구성후 데이터 넣기
    Map carMackers ={};
    carMackers.addAll({'hyundai' : '현대자동차',
                        'kia' : '기아자동차'});
      print(carMackers);
      // Key 값을 리스트로 바꾸기
      print(carMackers.keys.toList());

      //Generic으로 선언하여 map 구성하기
      Map<String, int> fruitPrice = {
        'apple' : 1000,
        'grape' : 2000,
        'watermelon' : 3000,
      };

      print(fruitPrice['apple']);
      // null값이 들어올수 있다는 표시 int? 
      // int? 는 들어올수 있다는 표시고 ! 는 제거하는 표시
      // ?가 없는 타입은 존재하는 값만 들어갈수잇다
      int applePrice = fruitPrice['apple']!;

      print(fruitPrice['apple']! + fruitPrice['grape']!);
}