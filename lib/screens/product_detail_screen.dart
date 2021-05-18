import 'package:flutter/material.dart';
import 'package:shopapp/providers/product.dart';

class ProductDetailScreen extends StatelessWidget {

  static const routeName = '/product_detail';
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context).settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
