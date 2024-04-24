main() {
  List threeKingdoms =[];
  // 추가하기
  
  threeKingdoms.add('위');
  threeKingdoms.add('촉');
  threeKingdoms.add('오');
  threeKingdoms.add(100);

  print(threeKingdoms);

  print(threeKingdoms[0]);
  threeKingdoms[0] = 'We';

  // 삭제
  threeKingdoms.removeAt(1);

  threeKingdoms.remove('We');

  print(threeKingdoms);
  // 타입을 지정해주면 그 타입만 넣을수있다
  List<String> threeKingdoms2 =[];
  threeKingdoms2.add('We');
  //threeKingdoms2.add(1);
  List<String> threeKingdoms3 = ['위','촉','오'];
  


  
}