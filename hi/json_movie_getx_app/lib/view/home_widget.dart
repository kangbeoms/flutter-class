import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:json_movie_getx_app/vm/vm_getx.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final VmGetX controller = Get.put(VmGetX());
    controller.getJSONData();
    return Center(
      
      child: GetBuilder<VmGetX>(
        builder: (controller) {
          return controller.data.isEmpty
          ? const CircularProgressIndicator()
          : ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    Image.network(
                      controller.data[index]['image'],
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      controller.data[index]['title']
                    )
                  ],
                ),
              );
            },
            );
        },
        ),
    );
  }
}