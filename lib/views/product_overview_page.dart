import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controllers/product_controller.dart';
import 'package:flutter_application_getx/models/product_fake_api_model.dart';
import 'package:flutter_application_getx/wigets/product_card.dart';
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
        title: const Text('Simple Get & show Card'),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: _controller.productFAKEs.length,
            itemBuilder: (context, index) {
              // Text(_controller.productFAKEs[index].title)),
              final product = _controller.productFAKEs[index];
              return buildCard(product);
            }),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          _controller.getProduct();
        },
        child: Text('Load more'),
      ),
    );
  }
}

Widget buildCard(ProductFakeApiModel product) {
  // if (recipe.cardType == RecipeCardType.card1) {
  //   return Card1(recipe: recipe);
  // } else if (recipe.cardType == RecipeCardType.card2) {
  //   return Card2(recipe: recipe);
  // } else if (recipe.cardType == RecipeCardType.card3) {
  //   return Card3(recipe: recipe);
  // } else {
  //   throw Exception('This card doesn\'t exist yet');
  // }
  if (product.title != "") {
    return ProductCard(product: product);
  } else {
    throw Exception('This card doesn\'t exist yet');
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
