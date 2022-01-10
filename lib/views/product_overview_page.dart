import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({Key? key}) : super(key: key);

  @override
  _ProductOverviewPageState createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  final ProductController _controller = Get.find();

  @override
  void initState() {
    _controller.getProduct();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Network Call'),
      ),
      body:

          // Obx(
          //   () => ListView.builder(
          //       itemCount: _controller.product.length,
          //       itemBuilder: (context, index) =>
          //           Text(_controller.product[index].descTha)),
          // ),

          Obx(
        () => ListView.builder(
            itemCount: _controller.randomusers.length,
            itemBuilder: (context, index) =>
                Text(_controller.randomusers[index].toString())),
      ),
    );
  }
}

// class ProductOverviewPage extends StatelessWidget {
//   final ProductController _controller = Get.find();
//   void SaveProduct() {
//     var code = " Textcontre..text";
//     var name = "";
//     var description = "";

//     var product = ProductRequest(code, name, description);
//     // _controller.saveProduct(product);
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.getProduct();
//     return Obx(
//       () => ListView.builder(
//           itemCount: _controller.product.length,
//           itemBuilder: (context, index) =>
//               Text(_controller.product[index].descTha)),
//     );
//     // _controller.getProduct();
//     // return MaterialButton(
//     //   onPressed: () => SaveProduct(),
//     // );
//   }
// }
