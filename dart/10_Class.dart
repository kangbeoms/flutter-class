main() {
  ThreeKingdoms threeKingdoms = ThreeKingdoms('관우', '촉');
  threeKingdoms.saySomething();

}

class ThreeKingdoms {
  //Filed
  String name;
  String nation;

  //Constructor
  // dart 의 생성자는 map 의 Key : value 값으로 만든다
      ThreeKingdoms(String name, String nation) 
      : this.name = name,
        this.nation = nation;

  //Method
  saySomething() {
    print('제 이름은 $name 이고 조국은 $nation 입니다.');
  }
}

class ThreeKingdoms2 {
  //Filed
  // 초기 상태 설정
  late String name;
  String? nation;

  //Constructor
  // dart 의 생성자는 map 의 Key : value 값으로 만든다
      ThreeKingdoms2(String name, String nation)  {
        this.name = name;
        this.nation = nation;
      
      }
  //Method
  saySomething() {
    print('제 이름은 $name 이고 조국은 $nation 입니다.');
  }
}