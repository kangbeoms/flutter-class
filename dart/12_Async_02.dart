main() {
  // fat arrow => 
  // 앱은 만약 리스트가 있고 그 리스트를 추가할떄 새로운페이지가 그 페이지에 곂쳐서 나온다. 리스트를 입력하고 
  // 확인버튼을 누르면 페이지가 닫히고 곂처진 페이지가 나온다. 그럴 떄 새로운 데이터를 추가해주는게 then 이다 
  getVersionName().then((value) => {print(value)});
print('end Process');

}

getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

lookUpVersionName() {
  return 'Android Q';
}