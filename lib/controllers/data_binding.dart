import 'package:flutter_application_getx/controllers/user_controller.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
    Get.lazyPut(() => UserController());
  }
}
