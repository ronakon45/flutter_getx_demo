import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controllers/product_controller.dart';
import 'package:flutter_application_getx/models/product_fake_api_model.dart';
import 'package:flutter_application_getx/wigets/product_card.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({Key? key}) : super(key: key);

  @override
  _ProductOverviewPageState createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  final ProductController _controller = Get.find();
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));

    _refreshController.loadComplete();

    _controller.getProduct();
  }

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
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Obx(
                  () => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _controller.productFAKEs.length,
                    itemBuilder: (context, index) {
                      // Text(_controller.productFAKEs[index].title)),
                      final product = _controller.productFAKEs[index];
                      return buildCard(product);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
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
  if (product.title != "") {
    return ProductCard(product: product);
  } else {
    throw Exception('This card doesn\'t exist yet');
  }
}
