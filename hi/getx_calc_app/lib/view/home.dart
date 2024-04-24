import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calc_app/vm/calc_getx.dart';


import 'home_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

  Get.put(CalcGetX());

    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('간단한 계산기'),
      ),
      body:  HomeWidget()
    );
  }
}