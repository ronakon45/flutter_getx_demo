import 'package:flutter_application_getx/connects/user_conect.dart';
import 'package:get/get.dart';

class UserController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();
    UserConnect().getUsers().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
