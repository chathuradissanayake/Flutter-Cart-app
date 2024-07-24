import '../models/item.dart';

class ShoppingCartController {
  List<Item> items = [];

  void addItem(String name) {
    items.add(Item(name: name));
  }

  void removeItem(int index) {
    items.removeAt(index);
  }
}
