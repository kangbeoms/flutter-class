import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Delete extends StatefulWidget {
  const Delete({super.key});

  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {


late TextEditingController codeController;
  late TextEditingController nameController;
  late TextEditingController deptController;
  late TextEditingController phoneController;
  late List data;
  late String code;



@override
  void initState() {
    super.initState();
    data = [];
    codeController = TextEditingController();
    nameController = TextEditingController();
    deptController = TextEditingController();
    phoneController = TextEditingController();
   

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete'),
      ),
      body: Center(
        child: Column(
          children: [
            const TextField(
              controller: codeController,
              decoration: InputDecoration(
                labelText: '코드를 입력하세요',
              ),
              readOnly: true,
            ),
            const TextField(
               controller: nameController,
              decoration: InputDecoration(
                labelText: '이름을  입력하세요',
              ),
              readOnly: true,
            ),
            const TextField(
               controller: deptController,
              decoration: InputDecoration(
                labelText: '전공을  입력하세요',
              ),
              readOnly: true,
            ),
            const TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: '전화번호를  입력하세요',
              ),
              readOnly: true,
            ),
            ElevatedButton(
                onPressed: () {
                  getJSONData();
                },
                child: const Text('입력'))
          ],
        ),
      ),
    );
  }

  getJSONData() async {
    code = codeController.text;

    var url = Uri.parse(
        'http://localhost:8080/Flutter/JSP/godelete.jsp?scode=$code');
    var response = await http.get(url);
    var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes)); 
    var result = dataConvertedJSON['result'];
    setState(() {});
    if ( result == 'No') {
      showNo();
    }else{
        showOk();
    }
  }
}
