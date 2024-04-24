import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bmi_calc_app/view/body.dart';

import 'package:provider_bmi_calc_app/vm/bmi_calc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BmiCalc>(context);
    return Scaffold(
        appBar: AppBar(
          title:  const Text('bmi 계산')
        ),
        body: BODY(bmi: bmi,),
        
    );
  }
}