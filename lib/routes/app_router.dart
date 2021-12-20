import 'package:flutter_application_getx/views/product_overview_page.dart';
import 'package:flutter_application_getx/views/user_view.dart';
import 'package:get/get.dart';

class AppRouter {
  static final route = [
    GetPage(
      name: "/",
      page: () => UserView(),
      transition: Transition.fade,
    ),
    GetPage(
      name: "/ProductOverviewPage",
      page: () => ProductOverviewPage(),
      transition: Transition.fade,
    ),
  ];
}
