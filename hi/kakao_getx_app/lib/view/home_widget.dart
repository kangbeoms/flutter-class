import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_getx_app/vm/get_api.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GetApi getapi = Get.put(GetApi());
    getapi.getJSONData();
    return GetBuilder<GetApi>(
      builder: (controller) {
        return ListView.builder(
          itemCount: getapi.data.length,
          itemBuilder: (context, index) {
            return controller.data.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [CircularProgressIndicator()],
                    ),
                  )
                : Card(
                    child: Row(
                      children: [
                        Image.network(
                          controller.data[index]['thumbnail'],
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.data[index]['title'].toString().length <
                                    26
                                ? Text(
                                    controller.data[index]['title'].toString())
                                : Text(controller.data[index]['title']
                                    .toString()
                                    .replaceRange(
                                        26,
                                        controller.data[index]['title']
                                            .toString()
                                            .length,
                                        "...")),
                            Text(controller.data[index]['price'].toString()),
                            Text(controller.data[index]['status'].toString()),
                          ],
                        )
                      ],
                    ),
                  );
          },
        );
      },
    );
  }
}
