import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_count_app/vm/count_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //Provider와 연결시키기
    final counter = Provider.of<CountProvider>(context);

    // Provider 의 Field 값 가져오기
    int count = counter.count;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider state'),
      ),
      body: Center(
        child: Text(
          count.toString(),

          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed:  () => counter.add(),
             icon: const Icon(Icons.add)
             ),
          IconButton(
            onPressed:  () => counter.subract(),
             icon: const Icon(Icons.remove)
             ),
        ],
      ),
    );
  }
}