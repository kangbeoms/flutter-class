import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_textfield_calc_app/view/home_widget.dart';
import 'package:provider_textfield_calc_app/vm/calc_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final clac = Provider.of<Calc>(context);
    
   

  


    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('간단한 계산기'),
        ),
        body: HomeWidget(calc: clac,)
      ),
    );
  }
}