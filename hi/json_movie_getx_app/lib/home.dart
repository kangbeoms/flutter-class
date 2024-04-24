import 'package:flutter/material.dart';
//import 'package:get/instance_manager.dart';
import 'package:json_movie_getx_app/view/home_widget.dart';
//import 'package:json_movie_getx_app/vm/vm_getx.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.put(VmGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON movie'),
      ),
      body: const HomeWidget(),
    );
  }
}