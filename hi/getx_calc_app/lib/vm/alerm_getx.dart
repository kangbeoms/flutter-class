import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackAction extends GetxController{


        showOn() {
        Get.snackbar('경고', '숫자를 전부 입력해주세요',
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
        colorText: Colors.blue,
        snackPosition: SnackPosition.TOP);
        update();
        
    }
}