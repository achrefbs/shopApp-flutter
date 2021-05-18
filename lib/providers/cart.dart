import 'package:flutter/cupertino.dart';

class CartItem {
  String id;
  String title;
  double price;
  double quantity;

  CartItem({
    this.id,
    this.title,
    this.price,
    this.quantity,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, value) {
      total += value.price * value.quantity;
    });
    return total;
  }

  void addItem(
    String productId,
    double price,
    String title,
  ) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (value) => CartItem(
            id: value.id,
            price: value.price,
            title: value.title,
            quantity: value.quantity + 1),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1,
        ),
      );
      notifyListeners();
    }
  }
}
