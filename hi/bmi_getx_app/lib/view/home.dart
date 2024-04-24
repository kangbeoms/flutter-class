import 'package:bmi_getx_app/vm/bmi_calc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  bool whatColor = false;
  String text = "";
  String whatBmi = "";
  double whereIcon = 0;

  @override
  Widget build(BuildContext context) {
    Get.put(BmiCalc());
    return Scaffold(
      appBar: AppBar(
        title: const Text('bmi 계산'),
      ),
      body: GetBuilder<BmiCalc>(
        builder: (controller) {
          return Column(
            children: [
              TextField(
                controller: num1Controller,
                decoration: const InputDecoration(labelText: '몸무게 입력'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: num2Controller,
                decoration: const InputDecoration(labelText: '키 입력'),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  onPressed: () {
                    actionGo(controller);
                  },
                  child: const Text('계산')),
              Column(
                children: [
                  Text(
                    '당신의 bmi 는 ${controller.what} 이고 ${controller.result} 입니다.',
                    style: TextStyle(
                      color: controller.whatColor ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(whereIcon, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 50,
                            color: controller.whatColor ? Colors.black : Colors.white,
                        ),
                      )
                    ],
                                      ),
                ],
              ),
              SizedBox(
                  width: 300, height: 200, child: Image.asset('images/bmi.jpg'))
            ],
          );
        },
      ),
    );
  }

  actionGo(BmiCalc controller) {
    controller.num1 = int.parse(num1Controller.text);
    controller.num2 = int.parse(num2Controller.text);
    controller.goCalc();
    whatColor = controller.whatColor;
    text = controller.what;
    whatBmi = controller.result;
    whereIcon = (controller.whereIcon );
  }
}
