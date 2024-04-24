import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetApi extends GetxController{
    

    List data = [];
    int page = 1;
    String what = "";

getJSONData() async {
    var uri = Uri.parse(
        "https://dapi.Kakao.com/v3/search/book?target=title&page=$page&query=$what");
    var response = await http.get(uri,
        headers: {"Authorization": "KakaoAK a87733e17c0dabdd05f287a5aab376b6"});
    print(response.body);
    var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
    List result = dataConvertedJSON['documents'];
    data.addAll(result);
    update();
  }


}