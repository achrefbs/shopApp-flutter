import 'package:flutter/material.dart';
import 'package:shopapp/providers/cart.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  CartItemWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          title: Text(item.title),
          subtitle: Text('\$ ${item.price}'),
          trailing: Text("${item.quantity} x"),
        ),
      ),
    );
  }
}
