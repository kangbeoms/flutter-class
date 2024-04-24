import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:kakao_getx_app/view/home_widget.dart';
import 'package:kakao_getx_app/vm/get_api.dart';


class Home extends StatelessWidget {
    Home({super.key});
    final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      final GetApi getapi = Get.put(GetApi());
      //getapi.getJSONData();
    return Scaffold(
      appBar: AppBar(
        title:  TextField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: '검색어 입력',
            
          ),
          textInputAction:  TextInputAction.go,
          onSubmitted: (value) {
                getapi.data.clear();
                

                getapi.getJSONData();
                getapi.what = textEditingController.text;
                
          },
        ),
      ),
      body: const HomeWidget(),
    );
  }
}