import 'package:flutter/material.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final ShoppingCartController _controller = ShoppingCartController();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Item Name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _controller.addItem(_textController.text);
                _textController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text('Add to Cart'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _controller.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_controller.items[index].name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _controller.removeItem(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
