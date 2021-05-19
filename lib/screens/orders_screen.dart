import 'package:flutter/material.dart';
import 'package:shopapp/providers/orders.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/widgets/drawer.dart';
import 'package:shopapp/widgets/order_item.dart';

class ORdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => OrderItemWidget(orderData.orders[i]),
        itemCount: orderData.orders.length,
      ),
      drawer: AppDrawer(),
    );
  }
}
