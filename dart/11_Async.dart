main() {
    checkVersion();
    print('end Process');

}
// async 를 붙이면 비동기 함수가 된다
checkVersion() async{
  // lookUpVersion 함수가 데이터를 줄 떄까지 기다린다
    var version = await lookIpVersion();
    print(version);
}

int lookIpVersion() {
  return 12;
}