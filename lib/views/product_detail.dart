import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/models/product_fake_api_model.dart';

class ProductDetail extends StatelessWidget {
  final ProductFakeApiModel product;
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              // height: 200.0,
              child: Image.network(product.image),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Text(product.description),
            ),
          ],
        ),
      ),
    );
  }
}
