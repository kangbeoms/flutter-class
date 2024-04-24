

import 'package:flutter/material.dart';
import 'package:provider_bmi_calc_app/vm/bmi_calc.dart';

class BODY extends StatelessWidget {
  final bmi = BmiCalc();
   BODY({super.key, bmi});

    final TextEditingController num1Controller = TextEditingController();
    final TextEditingController num2Controller = TextEditingController();
    Color whatColor = Colors.white;
    String text = "";
     String whatBmi = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
            children: [
              TextField(
                  controller: num1Controller,
                  decoration: const InputDecoration(
                    labelText: '몸무게 입력'
                  ),
                  keyboardType: TextInputType.number,
              ),
                  TextField(
                  controller: num2Controller,
                  decoration: const InputDecoration(
                    labelText: '키 입력'
                  ),
                  keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                    actionGo();
                },
                  child: const Text('계산')),
                  Positioned(
                      left: 20,
                      //top: 20,
                      bottom: 200,
                  child: Column(
                    children: [
                  Icon(Icons.arrow_drop_down),
                      Text('당신의 bmi 는 ${bmi.what} 이고 ${bmi.result} 입니다.', style: TextStyle(
                        color: bmi.whatColor
                      ),
                      )
                    ],
                  )
                ),
                SizedBox( width: 300,height: 200,
                  child: Image.asset('images/bmi.jpg'))
            ],
      ),
    );
  }

  actionGo() {
        bmi.num1 = int.parse(num1Controller.text);
        bmi.num2 = int.parse(num2Controller.text);
        
        bmi.goCalc();
        // text = bmi.what;
        // whatColor = bmi.whatColor;
        // whatBmi = bmi.result;
        
        
  }
}