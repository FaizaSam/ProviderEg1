import 'package:flutter/widgets.dart';

class ShoppingCart with ChangeNotifier {
  List<String> _shoppingCart = ['Apple', 'Orange', 'Mango'];
  int get Count => _shoppingCart.length;
  List<String> get cart => _shoppingCart;
  void addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
