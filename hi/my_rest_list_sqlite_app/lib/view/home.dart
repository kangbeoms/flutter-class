import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:my_rest_list_sqlite_app/view/insert.dart';
import 'package:my_rest_list_sqlite_app/view/map_gps.dart';
import 'package:my_rest_list_sqlite_app/view_model/database_handler.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DatabaseHandler databaseHandler;

  @override
  void initState() {
    super.initState();
    databaseHandler = DatabaseHandler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내가 경험한 맛집 리스트'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Insert())!.then((value) => reloadData());
              },
              icon: const Icon(Icons.edit_note_outlined)),
        ],
      ),
      body: FutureBuilder(
        future: databaseHandler.queryList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Slidable(
                    startActionPane: ActionPane(motion: const BehindMotion(), children: [
                    SlidableAction(
                      backgroundColor: Colors.red.shade400,
                          icon: Icons.delete,
                          label: 'Delete',
                      onPressed: (context) {
                            goDelete();
                            reloadData();
                            
                      },
                      )
                  ]),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const MapGps(), arguments: [
                        snapshot.data![index].lat,
                        snapshot.data![index].lng,
                        snapshot.data![index].name,
                      ]);
                    },
                    child: Card(
                        child: Column(
                      children: [
                        // Column(
                        //   children: [Image.memory(snapshot.data![index].image as Uint8List ,width: 100,)],
                        // ),
                        Column(
                          children: [
                            Text('명칭: ${snapshot.data![index].name}'
                                '\n\n전화번호: ${snapshot.data![index].phone}')
                          ],
                        )
                      ],
                    )),
                  ),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  reloadData() {
    databaseHandler.initializeDB();
    setState(() {});
  }

  goDelete() {

  }
}
