import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calc_app/vm/calc_getx.dart';
import 'package:getx_calc_app/vm/clean_calc.dart';

import '../vm/alerm_getx.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController addController = TextEditingController();
  final TextEditingController subController = TextEditingController();
  final TextEditingController mulController = TextEditingController();
  final TextEditingController divController = TextEditingController();

  //final CalcGetX resultCalc = Get.put(CalcGetX());
  final Clean clean = Get.put(Clean());
  final SnackAction snack = Get.put(SnackAction());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: GetBuilder<CalcGetX>(
          builder: (controller) {
            return Column(
              children: [
                TextField(
                  controller: num1Controller,
                  decoration:
                      const InputDecoration(labelText: '첫번째 숫자를 입력하세요.'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: num2Controller,
                  decoration:
                      const InputDecoration(labelText: '두번째 숫자를 입력하세요.'),
                  keyboardType: TextInputType.number,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          clacAction(controller);
                        },
                        child: const Text('계산하기')),
                    ElevatedButton(
                        onPressed: () {
                          clean.action();
                          num1Controller.text = clean.num1;
                          num2Controller.text = clean.num2;
                        },
                        child: const Text('지우기')),
                  ],
                ),
                TextField(
                  controller: addController,
                  decoration: const InputDecoration(labelText: '덧셈 결과.'),
                ),
                TextField(
                  controller: subController,
                  decoration: const InputDecoration(labelText: '뺄셈 결과.'),
                ),
                TextField(
                  controller: mulController,
                  decoration: const InputDecoration(labelText: '곱셈 결과.'),
                ),
                TextField(
                  controller: divController,
                  decoration: const InputDecoration(labelText: '나눗셈 결과.'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  clacAction(CalcGetX controller) {
    if (num1Controller.text.toString().isEmpty ||
        num2Controller.text.toString().isEmpty) {
            snack.showOn();
    } else {
      controller.num1 = int.parse(num1Controller.text);
      controller.num2 = int.parse(num2Controller.text);
      controller.calcAll();
      addController.text = (controller.addresult).toString();
      subController.text = (controller.subresult).toString();
      mulController.text = (controller.mulresult).toString();
      divController.text = (controller.divresult).toString();
    }
  }
}
