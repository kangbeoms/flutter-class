import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VmGetX extends GetxController{
  List data = [];
  getJSONData() async {
    var url = Uri.parse("https://zeushahn.github.io/Test/movies.json");
    var response = await http.get(url);
    var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
    List result = dataConvertedJSON['results'];
    data.addAll(result);
    update();
  }

}