import 'package:flutter/material.dart';
import 'package:flutter_application_getx/models/product_fake_api_model.dart';

class ProductCard extends StatelessWidget {
  final ProductFakeApiModel product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 4.0,
          child: Column(
            children: [
              ListTile(
                title: Text(product.title),
                subtitle: Text(product.category),
              ),
              Container(
                height: 200.0,
                child: Image.network(product.image),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(product.description),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    child: const Text('LEARN MORE'),
                    onPressed: () {
                      /* ... */
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
