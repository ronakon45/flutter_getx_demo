import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controllers/user_controller.dart';
import 'package:get/get.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Network Call'),
      ),
      body: controller.obx((data) => Center(
          child: ListView.builder(
              itemCount: data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(data[index]['name']['first']),
                        subtitle: Text(data[index]['name']['last']),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data[index]['picture']['thumbnail']),
                        ),
                      )
                    ],
                  ),
                );
              }))),
    );
  }
}
