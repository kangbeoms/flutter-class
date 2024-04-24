import 'package:flutter/material.dart';
import 'package:provider_textfield_calc_app/vm/calc_provider.dart';

class HomeWidget extends StatelessWidget {
  final calc = Calc();
    HomeWidget({super.key, calc});

    final TextEditingController num1Controller = TextEditingController();
    final TextEditingController num2Controller = TextEditingController();
    final TextEditingController addController = TextEditingController();
    final TextEditingController subController = TextEditingController();
    final TextEditingController mulController = TextEditingController();
    final TextEditingController divController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: '첫번째 숫자를 입력하세요.'
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: '두번째 숫자를 입력하세요.'
              ),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => calcAction(),
                   child: const Text('계산하기')
                   ), 
              ],
            ),
             TextField(
              controller: addController,
              decoration: const InputDecoration(
                labelText: '덧셈 결과.'
              ),
              
            ),
          ],
        ),
      ),
    );
  }

calcAction() {
  calc.num1 = int.parse(num1Controller.text);
  calc.num2 = int.parse(num2Controller.text);
  calc.calcAll();
  addController.text = calc.addresult.toString();

}


}