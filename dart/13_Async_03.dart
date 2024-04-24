main(){
  printOne();
  printTwo();
  printThree();


}

printOne() {
  print('one');
}
// 일부러 딜레이를 줄수있다
printTwo() async {
    Future.delayed(Duration(seconds: 2), () {
          print('Future');
    });
    print("Two");

}

printThree() {
  print('three');
}