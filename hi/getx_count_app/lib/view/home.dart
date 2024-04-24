import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_count_app/view/count_home_widget.dart';
import 'package:getx_count_app/vm/count_getx.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // 사용할 vm을 생성자를 통해 클라스와 연결해 그 클라스와 연결된 부분만 신호를 받는다.
    final CountGetX controller = Get.put(CountGetX());

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX - State'),
      ),
      body: const CountHome(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () => controller.add(), icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () => controller.sub(),
              icon: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
