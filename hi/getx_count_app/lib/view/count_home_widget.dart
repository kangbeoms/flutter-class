import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_count_app/vm/count_getx.dart';

class CountHome extends StatelessWidget {
  const CountHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<CountGetX>(
        builder: (controller) {
          return Text(
            controller.counter.toString(),
            style: const TextStyle(
              fontSize: 40,
            ),
          );
        },
      ),
    );
  }
}